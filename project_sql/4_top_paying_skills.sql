/*
Question: What are the top skills based on salary?
-   Look at the average salary associated with each skill for Data Analyst positions
-   Focuses on roles with specified salaries, regardless of location
-   Why? It reveals how different skills impact salary levels for Data Analyst and helps 
        identify the most financially rewarding skills to aquire of improve.
*/



SELECT 
    skills,
    ROUND(AVG(salary_year_avg), 0) AS salary_average
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE 
    job_title_short = 'Data Analyst' AND 
    salary_year_avg IS NOT NULL 
GROUP BY
    skills
ORDER BY 
    salary_average DESC
LIMIT 50;

/* 

Breakdown of Top 50 Highest Paying Jobs for Data Analysts
Top-Earning Skills

    Highest Salaries: SVN ($400,000), Solidity ($179,000), Couchbase ($160,515).
    Specialized Tools and Languages: High demand for skills in DataRobot, Golang, and niche sectors like blockchain.

Cloud and Data Proficiency

    Key Tools: High-paying skills include Terraform ($146,734), Kafka ($129,999), and Airflow ($116,387).
    Big Data Expertise: Strong salaries for Cassandra ($118,407) and MongoDB ($113,608).

Machine Learning and AI

    Machine Learning Libraries: High salaries for Keras ($127,013), PyTorch ($125,226), and TensorFlow ($120,647).
    Niche AI Tools: Hugging Face ($123,950) also in demand.

Software Development and DevOps

    Version Control: Skills in GitLab ($134,126) and Puppet ($129,820) are lucrative.
    DevOps Integration: Ansible ($124,370) shows the importance of DevOps skills.

Data Analysis Tools

    Data Manipulation: Dplyr ($147,633) and Pandas ($110,767) are essential for data transformation.
    Statistical Computing: R and Python expertise are crucial for high-paying data analyst roles.

Emerging Technologies

    Blockchain: Solidity ($179,000) reflects the growing blockchain sector.
    Next-Gen Platforms: Databricks ($112,881) and Snowflake ($111,578) indicate a trend toward new data platforms.

Traditional Skills

    Legacy Languages: Skills in Perl ($124,686) and PHP ($109,052) remain valuable.

Key Takeaways

    Continuous Learning: Staying updated with emerging technologies is crucial for high earnings.
    Cross-Disciplinary Skills: Versatility across cloud, software development, and AI is increasingly valued.

[
  {
    "skills": "svn",
    "salary_average": "400000"
  },
  {
    "skills": "solidity",
    "salary_average": "179000"
  },
  {
    "skills": "couchbase",
    "salary_average": "160515"
  },
  {
    "skills": "datarobot",
    "salary_average": "155486"
  },
  {
    "skills": "golang",
    "salary_average": "155000"
  },
  {
    "skills": "mxnet",
    "salary_average": "149000"
  },
  {
    "skills": "dplyr",
    "salary_average": "147633"
  },
  {
    "skills": "vmware",
    "salary_average": "147500"
  },
  {
    "skills": "terraform",
    "salary_average": "146734"
  },
  {
    "skills": "twilio",
    "salary_average": "138500"
  },
  {
    "skills": "gitlab",
    "salary_average": "134126"
  },
  {
    "skills": "kafka",
    "salary_average": "129999"
  },
  {
    "skills": "puppet",
    "salary_average": "129820"
  },
  {
    "skills": "keras",
    "salary_average": "127013"
  },
  {
    "skills": "pytorch",
    "salary_average": "125226"
  },
  {
    "skills": "perl",
    "salary_average": "124686"
  },
  {
    "skills": "ansible",
    "salary_average": "124370"
  },
  {
    "skills": "hugging face",
    "salary_average": "123950"
  },
  {
    "skills": "tensorflow",
    "salary_average": "120647"
  },
  {
    "skills": "cassandra",
    "salary_average": "118407"
  },
  {
    "skills": "notion",
    "salary_average": "118092"
  },
  {
    "skills": "atlassian",
    "salary_average": "117966"
  },
  {
    "skills": "bitbucket",
    "salary_average": "116712"
  },
  {
    "skills": "airflow",
    "salary_average": "116387"
  },
  {
    "skills": "scala",
    "salary_average": "115480"
  },
  {
    "skills": "linux",
    "salary_average": "114883"
  },
  {
    "skills": "confluence",
    "salary_average": "114153"
  },
  {
    "skills": "pyspark",
    "salary_average": "114058"
  },
  {
    "skills": "mongodb",
    "salary_average": "113608"
  },
  {
    "skills": "aurora",
    "salary_average": "113394"
  },
  {
    "skills": "cordova",
    "salary_average": "113270"
  },
  {
    "skills": "gcp",
    "salary_average": "113065"
  },
  {
    "skills": "spark",
    "salary_average": "113002"
  },
  {
    "skills": "splunk",
    "salary_average": "112928"
  },
  {
    "skills": "databricks",
    "salary_average": "112881"
  },
  {
    "skills": "unify",
    "salary_average": "112317"
  },
  {
    "skills": "git",
    "salary_average": "112250"
  },
  {
    "skills": "dynamodb",
    "salary_average": "111840"
  },
  {
    "skills": "snowflake",
    "salary_average": "111578"
  },
  {
    "skills": "shell",
    "salary_average": "111496"
  },
  {
    "skills": "electron",
    "salary_average": "111175"
  },
  {
    "skills": "unix",
    "salary_average": "111123"
  },
  {
    "skills": "hadoop",
    "salary_average": "110888"
  },
  {
    "skills": "pandas",
    "salary_average": "110767"
  },
  {
    "skills": "node.js",
    "salary_average": "110230"
  },
  {
    "skills": "phoenix",
    "salary_average": "109259"
  },
  {
    "skills": "php",
    "salary_average": "109052"
  },
  {
    "skills": "neo4j",
    "salary_average": "108646"
  },
  {
    "skills": "nosql",
    "salary_average": "108331"
  },
  {
    "skills": "express",
    "salary_average": "108221"
  }
]

*/
