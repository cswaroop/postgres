DROP VIEW IF EXISTS api.quoteline;
DROP FUNCTION IF EXISTS itemPrice(pItemid INTEGER,
                                  pCustid INTEGER,
                                  pShiptoid INTEGER,
                                  pQty NUMERIC,
                                  pCurrid INTEGER,
                                  pEffective DATE);
DROP FUNCTION IF EXISTS itemPrice(pItemid INTEGER,
                                  pCustid INTEGER,
                                  pShiptoid INTEGER,
                                  pQty NUMERIC,
                                  pQtyUOM INTEGER,
                                  pPriceUOM INTEGER,
                                  pCurrid INTEGER,
                                  pEffective DATE);
DROP FUNCTION IF EXISTS itemPrice(pItemid INTEGER,
                                  pCustid INTEGER,
                                  pShiptoid INTEGER,
                                  pQty NUMERIC,
                                  pQtyUOM INTEGER,
                                  pPriceUOM INTEGER,
                                  pCurrid INTEGER,
                                  pEffective DATE,
                                  pAsOf DATE);
DROP FUNCTION IF EXISTS itemPrice(pItemid INTEGER,
                                  pCustid INTEGER,
                                  pShiptoid INTEGER,
                                  pQty NUMERIC,
                                  pQtyUOM INTEGER,
                                  pPriceUOM INTEGER,
                                  pCurrid INTEGER,
                                  pEffective DATE,
                                  pAsOf DATE,
                                  pSiteid INTEGER);
DROP FUNCTION IF EXISTS itemIpsPrice(pItemid INTEGER,
                                     pCustid INTEGER,
                                     pShiptoid INTEGER,
                                     pQty NUMERIC,
                                     pQtyUOM INTEGER,
                                     pPriceUOM INTEGER,
                                     pCurrid INTEGER,
                                     pEffective DATE,
                                     pAsOf DATE,
                                     pSiteid INTEGER);
-- Old itemIpsPrice function might exist.
DROP FUNCTION IF EXISTS itemIpsPrice(pItemid INTEGER,
                                     pCustid INTEGER,
                                     pShiptoid INTEGER,
                                     pQty NUMERIC,
                                     pQtyUOM INTEGER,
                                     pPriceUOM INTEGER,
                                     pCurrid INTEGER,
                                     pEffective DATE,
                                     pAsOf DATE,
                                     pSiteid INTEGER,
                                     pShipzoneid INTEGER,
                                     pSaletypeid INTEGER);

DROP TYPE IF EXISTS itemprice;
CREATE TYPE itemprice AS (itemprice_price NUMERIC,
                          itemprice_method CHAR(1),
                          itemprice_type CHAR(1),
                          itemprice_sale TEXT,
                          itemprice_schedule TEXT,
                          itemprice_assignment INTEGER,
                          itemprice_listprice NUMERIC,
                          itemprice_basistype CHAR(1),
                          itemprice_basis NUMERIC,
                          itemprice_modifierpct NUMERIC,
                          itemprice_modifieramt NUMERIC,
                          itemprice_qtybreak NUMERIC,
                          itemprice_exclusive BOOLEAN,
                          itemprice_qty_uom_id INTEGER,
                          itemprice_price_uom_id INTEGER
                         );