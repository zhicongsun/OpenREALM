

#include <realm_core/loguru.h>

#include <realm_io/utilities.h>

using namespace realm;

bool io::fileExists(const std::string &filepath)
{
  return boost::filesystem::exists(filepath);
}

bool io::dirExists(const std::string &directory)
{
  return boost::filesystem::exists(directory);
}

void io::createDir(const std::string &directory)
{
  if (io::dirExists(directory))
    return;
  boost::filesystem::path dir(directory);
  try
  {
    boost::filesystem::create_directory(dir);
  }
  catch (...)
  {
    LOG_F(WARNING, "Creating path failed: %s", directory.c_str());
  }
}

bool io::removeFileOrDirectory(const std::string &path)
{
  boost::system::error_code error;
  boost::filesystem::remove_all(path, error);

  if(error)
  {
    throw(std::runtime_error(error.message()));
  }
  return true;
}

std::string io::createFilename(const std::string &prefix, uint32_t frame_id, const std::string &suffix)
{
  char filename[1000];
  sprintf(filename, (prefix + "%06i" + suffix).c_str(), frame_id);
  return std::string(filename);
}

std::string io::getTempDirectoryPath()
{
  boost::system::error_code error;
  boost::filesystem::path path = boost::filesystem::temp_directory_path(error);

  if(error)
  {
    throw(std::runtime_error(error.message()));
  }
  return path.string();
}

std::string io::getDateTime()
{
  time_t     now = time(nullptr);
  tm  tstruct = *localtime(&now);
  char tim[20];
  strftime(tim, sizeof(tim), "%y-%m-%d_%H-%M-%S", &tstruct);
  return std::string(tim);
}

// uint32_t io::extractFrameIdFromFilepath(const std::string &filepath)
// {
//   std::vector<std::string> tokens_path = io::split(filepath.c_str(), '/');
//   std::vector<std::string> tokens_name = io::split(tokens_path.back().c_str(), '.');
//   std::string filename = tokens_name[0];
//   return static_cast<uint32_t>(std::stoul(filename.substr(filename.size()-4,filename.size())));
// }
uint32_t io::extractFrameIdFromFilepath(const std::string &filepath)
{
  std::cout << "Filepath: " << filepath << std::endl;

  std::vector<std::string> tokens_path = io::split(filepath.c_str(), '/');
  std::cout << "Tokens from path: ";
  for (const auto &token : tokens_path)
    std::cout << token << " ";
  std::cout << std::endl;

  std::vector<std::string> tokens_name = io::split(tokens_path.back().c_str(), '.');
  std::cout << "Tokens from filename: ";
  for (const auto &token : tokens_name)
    std::cout << token << " ";
  std::cout << std::endl;

  std::string filename = tokens_name[0];
  std::cout << "Filename: " << filename << std::endl;
  //根据文件名img_001.jpg后几位切片给frame id，这里是3位，原数据集是4位
  std::string last_four_chars = filename.substr(filename.size()-3,filename.size());
  std::cout << "Last four characters of filename: " << last_four_chars << std::endl;

  uint32_t frame_id = static_cast<uint32_t>(std::stoul(last_four_chars));
  std::cout << "Frame ID: " << frame_id << std::endl;

  return frame_id;
}


std::vector<std::string> io::split(const char *str, char c)
{
  std::vector<std::string> result;

  do
  {
    const char *begin = str;

    while(*str != c && *str)
      str++;

    result.emplace_back(std::string(begin, str));
  }
  while (0 != *str++);

  return result;
}

std::vector<std::string> io::getFileList(const std::string& dir, const std::string &suffix)
{
  std::vector<std::string> filenames;
  if (!dir.empty())
  {
    boost::filesystem::path apk_path(dir);
    boost::filesystem::recursive_directory_iterator end;

    for (boost::filesystem::recursive_directory_iterator it(apk_path); it != end; ++it)
    {
      const boost::filesystem::path cp = (*it);

      const std::string &filepath = cp.string();
      if (suffix.empty() || filepath.substr(filepath.size() - suffix.size(), filepath.size()) == suffix)
        filenames.push_back(cp.string());
    }
  }
  std::sort(filenames.begin(), filenames.end());
  return filenames;
}

cv::Mat io::computeOrientationFromHeading(double heading)
{
  // Rotation to the world in camera frame
  cv::Mat R_wc = cv::Mat::eye(3, 3, CV_64F);
  R_wc.at<double>(1, 1) = -1;
  R_wc.at<double>(2, 2) = -1;

  // Rotation around z considering uav heading
  double gamma = heading * M_PI / 180;
  cv::Mat R_wc_z = cv::Mat::eye(3, 3, CV_64F);
  R_wc_z.at<double>(0, 0) = cos(-gamma);
  R_wc_z.at<double>(0, 1) = -sin(-gamma);
  R_wc_z.at<double>(1, 0) = sin(-gamma);
  R_wc_z.at<double>(1, 1) = cos(-gamma);
  cv::Mat R = R_wc_z * R_wc;

  return R;
}