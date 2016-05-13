/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package viewmodel;

/**
 *
 * @author ali
 */
public class SiteCurrentInformation {
    private int numOfJobs;
    private int numOfJobSeekers;
    private int numOfEmployers;
    private int numOfTeams;
    
    public SiteCurrentInformation() {}

    public int getNumOfJobs() {
        return numOfJobs;
    }

    public void setNumOfJobs(int numOfJobs) {
        this.numOfJobs = numOfJobs;
    }

    public int getNumOfJobSeekers() {
        return numOfJobSeekers;
    }

    public void setNumOfJobSeekers(int numOfJobSeekers) {
        this.numOfJobSeekers = numOfJobSeekers;
    }

    public int getNumOfEmployers() {
        return numOfEmployers;
    }

    public void setNumOfEmployers(int numOfEmployers) {
        this.numOfEmployers = numOfEmployers;
    }

    public int getNumOfTeams() {
        return numOfTeams;
    }

    public void setNumOfTeams(int numOfTeams) {
        this.numOfTeams = numOfTeams;
    }
    
    
}
