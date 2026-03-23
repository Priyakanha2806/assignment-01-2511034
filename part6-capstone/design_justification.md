Storage Systems

The proposed system uses multiple storage solutions to meet different functional requirements. A relational database (such as PostgreSQL) is used for OLTP operations, including storing patient records, appointments, and treatment histories. This ensures strong consistency and reliability for critical healthcare data.

A data warehouse is used for analytical purposes, such as generating monthly reports on bed occupancy, department-wise costs, and patient trends. It stores cleaned and structured data optimized for fast query performance.

A data lake is used to store unstructured and semi-structured data such as medical images, sensor logs, and real-time ICU monitoring data. This allows the system to handle large volumes of raw data efficiently.

Additionally, a vector database is used to enable semantic search functionality. Patient records and documents are converted into embeddings, allowing doctors to query patient history in natural language and retrieve contextually relevant results.

OLTP vs OLAP Boundary

The OLTP system handles real-time transactional operations such as patient admissions, updates to medical records, and appointment scheduling. It is optimized for fast, reliable write operations and ensures data consistency.

The OLAP system begins at the data warehouse layer, where data from the OLTP system is transformed and aggregated for analytical purposes. This includes reporting, trend analysis, and decision-making support. The boundary between OLTP and OLAP is typically defined by ETL pipelines, which extract data from transactional systems and load it into analytical storage systems.

Trade-offs

A key trade-off in this architecture is increased system complexity due to the use of multiple storage technologies. Managing data flow between OLTP databases, data lakes, data warehouses, and vector databases requires robust data pipelines and orchestration tools.

However, this complexity is justified by the scalability and flexibility it provides. The system can handle structured, unstructured, and real-time data efficiently while supporting advanced analytics and AI capabilities. This trade-off can be mitigated by using automated data pipelines, monitoring systems, and well-defined data governance practices to ensure smooth operation.


