package joblattice.models;

public class JobPosting {
    private String title;
    private String companyName;
    private String location;
    private String employmentType;

    // Constructor
    public JobPosting(String title, String companyName, String location, String employmentType) {
        this.title = title;
        this.companyName = companyName;
        this.location = location;
        this.employmentType = employmentType;
    }

    // Getters (Required by JSTL tags to read data)
    public String getTitle() { return title; }
    public String getCompanyName() { return companyName; }
    public String getLocation() { return location; }
    public String getEmploymentType() { return employmentType; }
}