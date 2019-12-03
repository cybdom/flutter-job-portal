class JobModel {
  final String description, iconUrl, location, salary, title;
  final List<String> photos;

  JobModel(
      {this.photos,
      this.description,
      this.iconUrl,
      this.location,
      this.salary,
      this.title});
}
