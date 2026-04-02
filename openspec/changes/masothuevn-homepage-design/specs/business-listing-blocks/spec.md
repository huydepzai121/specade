## ADDED Requirements

### Requirement: Business card component with 4 metadata fields
Each business listing item SHALL display: business name (uppercase, bold), MST (mã số thuế), representative name (Người đại diện), address (Địa chỉ), and establishment date (Ngày thành lập). The card layout SHALL be horizontal.

#### Scenario: Business card renders all fields
- **WHEN** a business listing block displays an item
- **THEN** the card shows the business name in uppercase bold, followed by 4 metadata fields in a compact layout

### Requirement: Top 10 newly established businesses block
The homepage SHALL display a block titled "Doanh nghiệp mới thành lập" showing the 10 most recently established businesses, with a "Xem thêm" link to /moi-thanh-lap/.

#### Scenario: Block renders with data
- **WHEN** the homepage loads
- **THEN** the "DN mới thành lập" block shows up to 10 business cards sorted by newest establishment date

#### Scenario: User clicks "Xem thêm"
- **WHEN** user clicks "Xem thêm" on this block
- **THEN** user navigates to /moi-thanh-lap/

### Requirement: Top 10 featured businesses block
The homepage SHALL display a block titled "Doanh nghiệp nổi bật" showing 10 businesses ranked by scale and brand recognition.

#### Scenario: Featured block renders
- **WHEN** the homepage loads
- **THEN** the "DN nổi bật" block shows 10 business cards for prominent businesses

### Requirement: Top 10 businesses by province block
The homepage SHALL display a block showing businesses from 5 major cities: Hà Nội, TP.HCM, Đà Nẵng, Hải Phòng, Đồng Nai. Each city SHALL have a tab or section with up to 10 businesses. A "Xem thêm" link SHALL navigate to /tinh-thanh/.

#### Scenario: Province block with city tabs
- **WHEN** the homepage loads
- **THEN** the province block shows tabs for 5 cities, defaulting to the first city's listings

#### Scenario: User switches city tab
- **WHEN** user clicks "TP.HCM" tab
- **THEN** the block displays 10 businesses from TP.HCM

### Requirement: Top 10 businesses by industry block
The homepage SHALL display a block showing businesses by major industries (Xây dựng, Bán lẻ, Vận tải, etc.) with a "Xem thêm" link to /nganh-nghe/.

#### Scenario: Industry block renders
- **WHEN** the homepage loads
- **THEN** the industry block shows industry categories with 10 businesses for the selected industry

### Requirement: Top 10 businesses by type and status block
The homepage SHALL display a block showing randomly selected businesses categorized by business type and operational status, with corresponding "Xem thêm" links.

#### Scenario: Type/status block renders
- **WHEN** the homepage loads
- **THEN** the block shows 10 randomly selected businesses with type and status labels
