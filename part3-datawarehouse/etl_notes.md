ETL Decisions
Decision 1 — Date Standardization

Problem: The dataset contains date values such as "2023-05-20" and "2023-12-31", which may be stored as text or interpreted differently across systems, leading to inconsistencies during analysis.
Resolution: All date values were converted into a standardized format (YYYY-MM-DD) and stored as proper DATE data types to ensure consistency and enable accurate time-based analysis such as monthly aggregation.

Decision 2 — Handling NULL Values

Problem: Some records may contain missing or NULL values in important fields, which can affect aggregation and analysis results. NULL values can lead to incorrect calculations or incomplete insights.
Resolution: Missing values were handled by either removing incomplete records or replacing them with appropriate default values where necessary. This ensured that analytical queries produce accurate and reliable results.

Decision 3 — Category and Status Standardization

Problem: The dataset contains categorical fields such as order status (e.g., "delivered", "shipped", "processing", "cancelled") which may have inconsistent casing or formatting. This can lead to incorrect grouping during analysis.
Resolution: All categorical values were standardized (e.g., converted to lowercase and consistent naming conventions) to ensure uniform grouping and accurate reporting in the data warehouse.
