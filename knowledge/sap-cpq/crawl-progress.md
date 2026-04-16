# SAP CPQ Knowledge Base — Crawl Progress

> **For crawler agents:** Before fetching any URL, check its status here.
> After writing a file, update its status to `completed`. Mark failures as `failed: [reason]`.
> This file is the single source of truth for what has and hasn't been captured.

---

## How to Resume a Job

1. Filter this file for rows with status `pending` or `failed`
2. Fetch in batches of 8–10 (parallel), respecting context window limits
3. Write output to the path in the **Target File** column
4. Update this file after each batch

---

## Job 1: Scripting Namespace Overviews

Base URL: `https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/`

| Status | Interface / Page | Source Filename | Target File |
|--------|-----------------|-----------------|-------------|
| `completed` | SAP CPQ Scripting Documentation (root) | `d75eb659-6335-53f6-af7a-81814a21ab7f.htm` | `scripting/namespaces/root.md` |
| `completed` | Crm.MSCrmService namespace | `111bed9e-2753-15b3-9fda-59062283a7b9.htm` | `scripting/namespaces/crm-mscrmservice.md` |
| `completed` | Scripting namespace | `1108d588-79c8-10e8-eb99-6e9d196af277.htm` | `scripting/namespaces/scripting.md` |
| `completed` | Scripting.Jwt namespace | `dab8110f-b9ef-5f1c-2bc4-7d867eedb666.htm` | `scripting/namespaces/scripting-jwt.md` |
| `completed` | Scripting.Quote namespace | `bc836bca-7f7c-6a90-e7f2-b31beab8660e.htm` | `scripting/namespaces/scripting-quote.md` |
| `completed` | Scripting.Quote.Approvals namespace | `1e3f630a-3cbe-1fa3-ed33-200c80c7ea54.htm` | `scripting/namespaces/scripting-quote-approvals.md` |
| `completed` | Scripting.Quote.Events namespace | `54ca8b50-489a-83b8-8398-8630b4cd4043.htm` | `scripting/namespaces/scripting-quote-events.md` |
| `completed` | Scripting.QuoteTables namespace | `e48e3d5c-9e53-44bc-e0ba-c22f2ff6f55b.htm` | `scripting/namespaces/scripting-quotetables.md` |
| `completed` | Scripting.Test namespace | `178da83a-2e02-7a3e-166a-4fa15d095f0c.htm` | `scripting/namespaces/scripting-test.md` |

---

## Job 2: Scripting Interface Detail Pages (243 total)

Base URL: `https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/`

| Status | Interface | Source Filename | Target File |
|--------|-----------|-----------------|-------------|
| `completed` | AddItemArgument Class | `e31f1d8c-2133-ecfb-6c21-22e3adb64e3c.htm` | `scripting/interfaces/AddItemArgument.md` |
| `completed` | ByteArrayContent Class | `a7e8ba02-f038-da6e-5c62-b2b035a32ce8.htm` | `scripting/interfaces/ByteArrayContent.md` |
| `completed` | HttpContent Class | `d66a0e18-26df-cf7a-ce53-baf4e58c459d.htm` | `scripting/interfaces/HttpContent.md` |
| `completed` | MultipartFormDataContent Class | `476669ae-094e-1393-2f1f-788bf95e1c88.htm` | `scripting/interfaces/MultipartFormDataContent.md` |
| `completed` | StreamContent Class | `21ec1149-192b-ffb1-b061-429781c1d53d.htm` | `scripting/interfaces/StreamContent.md` |
| `completed` | StreamReader Class | `e96efff9-09c7-59ad-8d8f-c179a590727d.htm` | `scripting/interfaces/StreamReader.md` |
| `completed` | StringContent Class | `14732dcb-018f-2892-eef0-88349b76b4bb.htm` | `scripting/interfaces/StringContent.md` |
| `completed` | AssetStatus Enumeration | `08ab5662-518e-3fab-d5fc-a59a9bada485.htm` | `scripting/interfaces/AssetStatus.md` |
| `completed` | AttributeAccess Enumeration | `f98846e7-b0f7-bd94-3ba2-87fd4f669886.htm` | `scripting/interfaces/AttributeAccess.md` |
| `completed` | Encodings Enumeration | `b2338606-8ef3-d38d-6d46-4974ea9d4269.htm` | `scripting/interfaces/Encodings.md` |
| `completed` | GenDocFormat Enumeration | `3c807ade-62fc-cd97-30ce-ea2b9962696f.htm` | `scripting/interfaces/GenDocFormat.md` |
| `completed` | HMACHashFunction Enumeration | `2703f402-c95e-167a-04b9-6dc62ad857d8.htm` | `scripting/interfaces/HMACHashFunction.md` |
| `completed` | SqlDbType Enumeration | `1831dcdd-7dd5-805c-1497-55751e21a475.htm` | `scripting/interfaces/SqlDbType.md` |
| `completed` | IAction Interface | `688db90f-5c78-42ac-01ac-bcf236af4963.htm` | `scripting/interfaces/IAction.md` |
| `completed` | IActionCollection Interface | `1e2bd0a5-30ef-d609-ff6b-deee7186b392.htm` | `scripting/interfaces/IActionCollection.md` |
| `completed` | IAddItemArgument Interface | `b4e3df32-0a14-e9b1-de06-8fb03c86eddc.htm` | `scripting/interfaces/IAddItemArgument.md` |
| `completed` | IAdditionalDiscount Interface | `687c0ba7-a072-e3b1-675a-18f58d58069e.htm` | `scripting/interfaces/IAdditionalDiscount.md` |
| `completed` | IAdditionalDiscountCollection Interface | `cc822db9-9cfb-ed3b-a7e6-fd3f5461bf66.htm` | `scripting/interfaces/IAdditionalDiscountCollection.md` |
| `completed` | IAliases Interface | `3314073f-472a-29f4-634f-7ad1cd5f0a78.htm` | `scripting/interfaces/IAliases.md` |
| `completed` | IApiResponse Interface | `9cf46dca-79a9-68d7-aff3-f0de814d915d.htm` | `scripting/interfaces/IApiResponse.md` |
| `completed` | IApiResponseFactory Interface | `c7662952-f923-f5e5-96aa-858fa5c3c999.htm` | `scripting/interfaces/IApiResponseFactory.md` |
| `completed` | IApproversResponsibility Interface | `105fd03d-5e03-982a-7ea3-696efe757918.htm` | `scripting/interfaces/IApproversResponsibility.md` |
| `completed` | IApproversResponsibilityCollection Interface | `fe9d9bce-90c7-a559-3e02-fafdc209100a.htm` | `scripting/interfaces/IApproversResponsibilityCollection.md` |
| `completed` | IAssert Interface | `444742e8-2886-72cf-9cd6-8ed453373558.htm` | `scripting/interfaces/IAssert.md` |
| `completed` | IAssetAttribute Interface | `a39b392c-97f1-9775-9863-1157347c866f.htm` | `scripting/interfaces/IAssetAttribute.md` |
| `completed` | IAssetConfiguration Interface | `fed4a814-2ca6-f317-1b5a-111afc235805.htm` | `scripting/interfaces/IAssetConfiguration.md` |
| `completed` | IAssetContainer Interface | `ff1eba81-55df-aed8-5abd-2d5186292246.htm` | `scripting/interfaces/IAssetContainer.md` |
| `completed` | IAssetContainerRow Interface | `eb587937-9e31-a6a3-6687-c9e6d5ad95f4.htm` | `scripting/interfaces/IAssetContainerRow.md` |
| `completed` | IAssetItem Interface | `b5444a18-6d56-ef46-11ea-159d323b6da6.htm` | `scripting/interfaces/IAssetItem.md` |
| `completed` | IAssetMainItem Interface | `8673bf23-c2d4-ea34-ab0c-fe17e2a22856.htm` | `scripting/interfaces/IAssetMainItem.md` |
| `completed` | IAsyncAuthorizedRestClient Interface | `66e3fcc3-4e66-f585-94e0-33553259507d.htm` | `scripting/interfaces/IAsyncAuthorizedRestClient.md` |
| `completed` | IAsyncMTLSRestClient Interface | `1f374681-9e21-8c78-82d8-d463dd432b89.htm` | `scripting/interfaces/IAsyncMTLSRestClient.md` |
| `completed` | IAsyncRestClient Interface | `4ba3cad0-a631-dc15-3ddf-741c738a034a.htm` | `scripting/interfaces/IAsyncRestClient.md` |
| `completed` | IAttachedDocument Interface | `5e9bc120-2c1f-c365-e9d9-b46903a4ab7f.htm` | `scripting/interfaces/IAttachedDocument.md` |
| `completed` | IAttachedDocumentCollection Interface | `01b51bbc-093c-e89c-25a7-4ec6c842ea5f.htm` | `scripting/interfaces/IAttachedDocumentCollection.md` |
| `completed` | IAttachment Interface | `096ce6cc-b74f-3998-3ca9-185ee44af4ff.htm` | `scripting/interfaces/IAttachment.md` |
| `completed` | IAuthorizedRestClient Interface | `b7434949-d964-2c41-3379-8eefa07d6d01.htm` | `scripting/interfaces/IAuthorizedRestClient.md` |
| `completed` | IBeforeAddToQuoteEventArguments Interface | `0ef7166a-1ed8-8366-719e-c97f3d50c441.htm` | `scripting/interfaces/IBeforeAddToQuoteEventArguments.md` |
| `completed` | IBeforeConfigureEventArguments Interface | `8f4aa8b3-4251-6739-a280-a2f8c6b80efe.htm` | `scripting/interfaces/IBeforeConfigureEventArguments.md` |
| `completed` | IBeforeProductAddToQuoteEventArgument Interface | `a6071a01-ccc5-4223-fc25-d9f2429c3063.htm` | `scripting/interfaces/IBeforeProductAddToQuoteEventArgument.md` |
| `completed` | IBusinessPartner Interface | `23f2a20f-f4c5-abc3-c794-ce7fdbb10a72.htm` | `scripting/interfaces/IBusinessPartner.md` |
| `completed` | IBusinessPartnerRepository Interface | `aa96dea8-5a0e-3658-f5ac-f4a4713ca701.htm` | `scripting/interfaces/IBusinessPartnerRepository.md` |
| `completed` | ICompany Interface | `991adec4-4ac1-e256-a2a9-fcd9b0819588.htm` | `scripting/interfaces/ICompany.md` |
| `completed` | IContainer Interface | `e361d7b6-d54a-6a84-6370-1bdd5944132a.htm` | `scripting/interfaces/IContainer.md` |
| `completed` | IContainerColumn Interface | `699292ca-ddb8-f316-1808-828021ce61d7.htm` | `scripting/interfaces/IContainerColumn.md` |
| `completed` | IContainerColumnCollection Interface | `c6ab3690-78e4-2b68-44e2-5f2f03a0aea1.htm` | `scripting/interfaces/IContainerColumnCollection.md` |
| `completed` | IContainerProperty Interface | `30d17744-9958-3769-5186-4de5ada229eb.htm` | `scripting/interfaces/IContainerProperty.md` |
| `completed` | IContainerPropertyCollection Interface | `33f131ea-0759-628c-268e-bf541b551df0.htm` | `scripting/interfaces/IContainerPropertyCollection.md` |
| `completed` | IContainerRow Interface | `628e8768-5646-b61b-d975-2c9372be34e3.htm` | `scripting/interfaces/IContainerRow.md` |
| `completed` | IContainerRowCollection Interface | `763e7097-9ad2-d7b5-0167-4237c060ff6e.htm` | `scripting/interfaces/IContainerRowCollection.md` |
| `completed` | IConvert Interface | `318c62e2-22a2-3a2f-2fc6-b81a21e811bc.htm` | `scripting/interfaces/IConvert.md` |
| `completed` | ICrmLandingEventArguments Interface | `de6b4a5c-6f7d-d3b0-1d01-ffc50ae9cfb4.htm` | `scripting/interfaces/ICrmLandingEventArguments.md` |
| `completed` | ICryptography Interface | `e243da7d-d4e3-7031-a4f9-51aa835768bf.htm` | `scripting/interfaces/ICryptography.md` |
| `completed` | ICustomer Interface | `37371ac3-5554-9154-7cc5-51e40da35545.htm` | `scripting/interfaces/ICustomer.md` |
| `completed` | ICustomerHelper Interface | `208fd248-993f-c3e7-b411-a435ec2bc700.htm` | `scripting/interfaces/ICustomerHelper.md` |
| `completed` | ICustomFieldChangedArgument Interface | `4fb087dd-b659-e273-b238-2cde03cecf70.htm` | `scripting/interfaces/ICustomFieldChangedArgument.md` |
| `completed` | IDocumentPricingResponse Interface | `b609d0db-0dce-244c-8623-fa3501d0e795.htm` | `scripting/interfaces/IDocumentPricingResponse.md` |
| `completed` | IFederationUtility Interface | `84761344-0cb3-3174-215a-c4e577fe23a4.htm` | `scripting/interfaces/IFederationUtility.md` |
| `completed` | IFileHelper Interface | `4698a1de-4373-3c7b-7bc8-9082b27640c8.htm` | `scripting/interfaces/IFileHelper.md` |
| `completed` | IGeneratedDocument Interface | `f9ebefa3-eeb9-55f5-d0b1-e87b1af3bdbd.htm` | `scripting/interfaces/IGeneratedDocument.md` |
| `completed` | IGeneratedDocumentCollection Interface | `9cb13091-0e87-9313-5e01-4a8b64fd2ba7.htm` | `scripting/interfaces/IGeneratedDocumentCollection.md` |
| `completed` | IHttpUtility Interface | `fc380802-b981-5afd-1b96-454f06fd86d0.htm` | `scripting/interfaces/IHttpUtility.md` |
| `completed` | IHttpWebClientProtocol Interface | `eb2c1c16-53af-eb64-e022-e4f23dd3dfd7.htm` | `scripting/interfaces/IHttpWebClientProtocol.md` |
| `completed` | IItemAction Interface | `02217f2e-5df8-8a55-f7b7-a3546972c038.htm` | `scripting/interfaces/IItemAction.md` |
| `completed` | IItemActionCollection Interface | `c4841f32-ca47-5acb-7b5b-7b21cade973c.htm` | `scripting/interfaces/IItemActionCollection.md` |
| `completed` | IItemActionId Interface | `5e3c1cfb-923f-0a28-60e2-c25f44ee7bbf.htm` | `scripting/interfaces/IItemActionId.md` |
| `completed` | IItemCustomField Interface | `89ad8674-477d-7391-b6bf-023ca941e25d.htm` | `scripting/interfaces/IItemCustomField.md` |
| `completed` | IItemCustomFieldCollection Interface | `9d5b747a-0f01-9fa1-a390-412c8b863c08.htm` | `scripting/interfaces/IItemCustomFieldCollection.md` |
| `completed` | IItemInfo Interface | `4b018900-689c-a4e7-e382-033ebf6f9bac.htm` | `scripting/interfaces/IItemInfo.md` |
| `completed` | IJsonHelper Interface | `45503895-030f-1fc0-3889-524235cc026f.htm` | `scripting/interfaces/IJsonHelper.md` |
| `completed` | IKeyAttribute Interface | `35f91327-c581-faa0-e4a3-12eb14229150.htm` | `scripting/interfaces/IKeyAttribute.md` |
| `completed` | IKeyAttributeCollection Interface | `bcc58663-a2ba-65f5-b837-356f1e79ac6c.htm` | `scripting/interfaces/IKeyAttributeCollection.md` |
| `completed` | ILineItem Interface | `6c94f1e9-9e2d-d9df-cb5a-ce736feb7ebd.htm` | `scripting/interfaces/ILineItem.md` |
| `completed` | ILineItemCollection Interface | `6174e9d7-9e2f-ab7e-82c5-4311ea286af7.htm` | `scripting/interfaces/ILineItemCollection.md` |
| `completed` | ILog Interface | `b2b3c8b3-6685-3d28-f50d-b5b6f791c32e.htm` | `scripting/interfaces/ILog.md` |
| `completed` | IMailAddress Interface | `1eda9882-8258-cfa9-a76a-09d8afcc2600.htm` | `scripting/interfaces/IMailAddress.md` |
| `completed` | IMailMessage Interface | `19f5783b-7b84-f727-1c39-b2d7d3b7da1c.htm` | `scripting/interfaces/IMailMessage.md` |
| `completed` | IMainItem Interface | `8d1533ab-8207-68ad-3ad7-f0c92e91d06b.htm` | `scripting/interfaces/IMainItem.md` |
| `completed` | IMainItemCollection Interface | `08205f1e-6e75-89bd-4811-2d20c78dccce.htm` | `scripting/interfaces/IMainItemCollection.md` |
| `completed` | IMarket Interface | `9a3f5cfd-8107-8735-3fbf-2b6f3d476251.htm` | `scripting/interfaces/IMarket.md` |
| `completed` | ImutualTLSRestClient Interface | `eb389757-0e01-865c-d0c6-044731d0a616.htm` | `scripting/interfaces/ImutualTLSRestClient.md` |
| `completed` | INetworkCredential Interface | `d9dfc46b-ed59-3bff-7248-7ff83aa21237.htm` | `scripting/interfaces/INetworkCredential.md` |
| `completed` | IPartnerFunction Interface | `e2aa8175-a732-429c-3146-3c184540c06c.htm` | `scripting/interfaces/IPartnerFunction.md` |
| `completed` | IPartnerFunctionRepository Interface | `77b55ddc-ac65-4ef6-a338-77d534fcf6b8.htm` | `scripting/interfaces/IPartnerFunctionRepository.md` |
| `completed` | IPartnerFunctionTranslation Interface | `521f229e-f48d-b3fa-d9b1-5ae9fb18b36a.htm` | `scripting/interfaces/IPartnerFunctionTranslation.md` |
| `completed` | IPostedFile Interface | `d142d348-eda5-bfa9-2bfa-215a04786708.htm` | `scripting/interfaces/IPostedFile.md` |
| `completed` | IProduct Interface | `7df18883-5cc5-31b3-6ee8-29cc050a835d.htm` | `scripting/interfaces/IProduct.md` |
| `completed` | IProductAddEditArgument Interface | `9e762e08-24bc-99e9-d177-4301d052319c.htm` | `scripting/interfaces/IProductAddEditArgument.md` |
| `completed` | IProductAttribute Interface | `8288b3aa-c3fe-ed7a-5623-d48381d03fdf.htm` | `scripting/interfaces/IProductAttribute.md` |
| `completed` | IProductAttributeCollection Interface | `64921a0b-5a13-2c43-3033-abfd80a15759.htm` | `scripting/interfaces/IProductAttributeCollection.md` |
| `completed` | IProductAttributeValue Interface | `1014340d-586f-5020-1248-32492a919465.htm` | `scripting/interfaces/IProductAttributeValue.md` |
| `completed` | IProductAttributeValueCollection Interface | `1d24834e-c256-b165-9da9-cfe753d5963b.htm` | `scripting/interfaces/IProductAttributeValueCollection.md` |
| `completed` | IProductBeforeAddToQuoteEventArgument Interface | `8fa6170d-5ba3-bbee-4ffe-b0361b16541d.htm` | `scripting/interfaces/IProductBeforeAddToQuoteEventArgument.md` |
| `completed` | IProductErrorMessages Interface | `70efe298-ad9c-22de-66f4-8227cf82a133.htm` | `scripting/interfaces/IProductErrorMessages.md` |
| `completed` | IProductHelper Interface | `4c110394-1d85-0241-cef4-a30cd47f2abf.htm` | `scripting/interfaces/IProductHelper.md` |
| `completed` | IProductInfo Interface | `41a307ca-03a5-7fcc-1729-0e3dcbb21c1f.htm` | `scripting/interfaces/IProductInfo.md` |
| `completed` | IProductMessages Interface | `422d1d05-eb32-ed1f-ce43-fedefb3ec696.htm` | `scripting/interfaces/IProductMessages.md` |
| `completed` | IProductTab Interface | `e6326979-68ce-a0db-2fc7-e271ef3e0362.htm` | `scripting/interfaces/IProductTab.md` |
| `completed` | IProductTabChangedArgument Interface | `9f31e61c-9365-05a0-7770-b71cefb83f08.htm` | `scripting/interfaces/IProductTabChangedArgument.md` |
| `completed` | IProductTabCollection Interface | `32a790eb-4630-54a3-275a-b6852e8ed8b0.htm` | `scripting/interfaces/IProductTabCollection.md` |
| `completed` | IProductType Interface | `c0d388ba-b10d-7980-3a9f-30f2b9128905.htm` | `scripting/interfaces/IProductType.md` |
| `completed` | IProductTypeItem Interface | `6870e946-3134-171b-687b-5d3cd8eb658d.htm` | `scripting/interfaces/IProductTypeItem.md` |
| `completed` | IProductTypeItemCollection Interface | `2357e2c7-bb0c-6310-e256-55a6f3310c2a.htm` | `scripting/interfaces/IProductTypeItemCollection.md` |
| `completed` | IProductValidationMessage Interface | `cde0834c-26f6-6750-89df-e96bb9aa52ec.htm` | `scripting/interfaces/IProductValidationMessage.md` |
| `completed` | IProductValidationMessageCollection Interface | `1572c092-59a2-00ad-7f4a-b8250ad5c87c.htm` | `scripting/interfaces/IProductValidationMessageCollection.md` |
| `completed` | IQuote Interface | `598345de-54e5-d213-e290-1bab8a4dcb3e.htm` | `scripting/interfaces/IQuote.md` |
| `completed` | IQuoteActionId Interface | `a619510c-1d70-8bf5-cd4d-7a3fb4d413a3.htm` | `scripting/interfaces/IQuoteActionId.md` |
| `completed` | IQuoteCustomField Interface | `f2f30dff-3558-6a60-85e2-3cd2e8d72ecc.htm` | `scripting/interfaces/IQuoteCustomField.md` |
| `completed` | IQuoteCustomFieldAttributeValue Interface | `70d3a838-0ecb-75e1-dd64-5f38f80e121c.htm` | `scripting/interfaces/IQuoteCustomFieldAttributeValue.md` |
| `completed` | IQuoteCustomFieldAttributeValueCollection Interface | `450164dc-6346-c415-ddbe-796473d6e5da.htm` | `scripting/interfaces/IQuoteCustomFieldAttributeValueCollection.md` |
| `completed` | IQuoteCustomFieldCollection Interface | `b2ac60ac-7c91-040f-cfb5-55c7c7c8061f.htm` | `scripting/interfaces/IQuoteCustomFieldCollection.md` |
| `completed` | IQuoteHelper Interface | `1fb7a625-3715-8518-2743-8875ee158c46.htm` | `scripting/interfaces/IQuoteHelper.md` |
| `completed` | IQuoteInfo Interface | `45f8da92-548e-dd4f-2ca2-3306a56d2d66.htm` | `scripting/interfaces/IQuoteInfo.md` |
| `completed` | IQuoteItem Interface | `d2a333ee-f2f7-d14b-aa88-bc241a77ae67.htm` | `scripting/interfaces/IQuoteItem.md` |
| `completed` | IQuoteItemAttribute Interface | `d28b7401-004f-e7b1-43cb-a51ce562f69f.htm` | `scripting/interfaces/IQuoteItemAttribute.md` |
| `completed` | IQuoteItemAttributeCollection Interface | `4b3338e2-a11b-d22a-c7d0-a1fd2cf76ebd.htm` | `scripting/interfaces/IQuoteItemAttributeCollection.md` |
| `completed` | IQuoteItemAttributeValue Interface | `e4c82f9b-12fa-b27c-b048-242a93d6cc01.htm` | `scripting/interfaces/IQuoteItemAttributeValue.md` |
| `completed` | IQuoteItemCollection Interface | `50625522-2ac2-b482-38b2-a2dd4874b22c.htm` | `scripting/interfaces/IQuoteItemCollection.md` |
| `completed` | IQuoteItemContainer Interface | `4bfef70a-8346-e705-78f6-c1535566f497.htm` | `scripting/interfaces/IQuoteItemContainer.md` |
| `completed` | IQuoteItemContainerColumn Interface | `3fa5380d-c9a0-8b00-018e-7fd2ad10679e.htm` | `scripting/interfaces/IQuoteItemContainerColumn.md` |
| `completed` | IQuoteItemContainerColumnCollection Interface | `2910ab81-1bb4-88a7-a84f-df94755a0735.htm` | `scripting/interfaces/IQuoteItemContainerColumnCollection.md` |
| `completed` | IQuoteItemContainerProperty Interface | `1d84752d-ab82-6e87-ec07-1bbe312bd4c4.htm` | `scripting/interfaces/IQuoteItemContainerProperty.md` |
| `completed` | IQuoteItemContainerPropertyCollection Interface | `9b03987c-e1b3-3433-2087-0a4289b645a4.htm` | `scripting/interfaces/IQuoteItemContainerPropertyCollection.md` |
| `completed` | IQuoteItemContainerRow Interface | `0e84fbc8-1cb7-399b-846f-f0ce244a9a90.htm` | `scripting/interfaces/IQuoteItemContainerRow.md` |
| `completed` | IQuoteItemContainerRowCollection Interface | `ea258368-d245-eb9c-8815-82f93b882179.htm` | `scripting/interfaces/IQuoteItemContainerRowCollection.md` |
| `completed` | IQuoteItemCustomField Interface | `5101f462-13ae-b593-925f-8755d5033ebc.htm` | `scripting/interfaces/IQuoteItemCustomField.md` |
| `completed` | IQuoteOrderStatus Interface | `4f8269d2-4d24-efc5-cbb3-bbab971daa53.htm` | `scripting/interfaces/IQuoteOrderStatus.md` |
| `completed` | IQuoteTotal Interface | `3aabe132-8692-00b8-5cfb-b18a905289bb.htm` | `scripting/interfaces/IQuoteTotal.md` |
| `completed` | IQuoteTotalCustomField Interface | `0b581001-c3bf-eb04-aa50-b1c695dee657.htm` | `scripting/interfaces/IQuoteTotalCustomField.md` |
| `completed` | IRandom Interface | `f92c17a2-096e-da56-0601-f19dc7a069f1.htm` | `scripting/interfaces/IRandom.md` |
| `completed` | IReadOnlyProductMessages Interface | `03af3e28-be90-13be-ba4e-aea9e818b767.htm` | `scripting/interfaces/IReadOnlyProductMessages.md` |
| `completed` | IRequest Interface | `650c2161-ddce-a29c-1e2a-b270bf3d2083.htm` | `scripting/interfaces/IRequest.md` |
| `completed` | IRequestContext Interface | `3473eadf-bdee-bedc-ad7f-8474de4536cf.htm` | `scripting/interfaces/IRequestContext.md` |
| `completed` | IRequestItems Interface | `1ea209a6-76b0-d267-2e43-f8b2d9a8fdb0.htm` | `scripting/interfaces/IRequestItems.md` |
| `completed` | IRestClient Interface | `332dded7-1a5e-c261-5cf9-8d49ba85f377.htm` | `scripting/interfaces/IRestClient.md` |
| `completed` | IRestServiceHelper Interface | `58620364-2c08-6501-3bf8-891fca4d22a8.htm` | `scripting/interfaces/IRestServiceHelper.md` |
| `completed` | ISalesArea Interface | `8bbf68a8-5223-8d83-3db8-aadd4071ef54.htm` | `scripting/interfaces/ISalesArea.md` |
| `completed` | ISamlAssertionProvider Interface | `4a752693-5a57-44cd-890d-f748e6e609c1.htm` | `scripting/interfaces/ISamlAssertionProvider.md` |
| `completed` | ISapPassport Interface | `eedbabc2-38c1-82cd-7be2-b6e4786231d3.htm` | `scripting/interfaces/ISapPassport.md` |
| `completed` | IScriptExecutor Interface | `8c85c3fb-fa3b-2d9c-37c1-1362b41e192c.htm` | `scripting/interfaces/IScriptExecutor.md` |
| `completed` | IScriptingMarket Interface | `67c3c2d5-78cd-d6b3-fe8c-92ae449115a6.htm` | `scripting/interfaces/IScriptingMarket.md` |
| `completed` | IScriptingMarketCollection Interface | `9506425c-9c48-be73-8680-d7338cd46dc1.htm` | `scripting/interfaces/IScriptingMarketCollection.md` |
| `completed` | ISelectedDictionary Interface | `e6fdb45a-0772-8bdd-3a66-effc38d1ea4d.htm` | `scripting/interfaces/ISelectedDictionary.md` |
| `completed` | ISession Interface | `06e9af60-9a9c-b704-782f-fc24aa1dc568.htm` | `scripting/interfaces/ISession.md` |
| `completed` | IShipping Interface | `859d8b85-6035-164e-e096-f0e4f947efdc.htm` | `scripting/interfaces/IShipping.md` |
| `completed` | ISmtpClient Interface | `d0f02fec-a789-bc78-869a-3fe57376d81b.htm` | `scripting/interfaces/ISmtpClient.md` |
| `completed` | ISoapHttpClientProtocol Interface | `d10c278d-7719-f117-85a9-3200c2760f54.htm` | `scripting/interfaces/ISoapHttpClientProtocol.md` |
| `completed` | ISqlHelper Interface | `32d070bc-9b7a-2e2e-27e7-417e618658ab.htm` | `scripting/interfaces/ISqlHelper.md` |
| `completed` | ISqlHelperInfo Interface | `8e73043b-c7e4-f60e-d7fc-e27da334a4d7.htm` | `scripting/interfaces/ISqlHelperInfo.md` |
| `completed` | ISqlParameter Interface | `ef9540db-e6d2-248a-9ff8-c840a55bb30b.htm` | `scripting/interfaces/ISqlParameter.md` |
| `completed` | IStreamReader Interface | `7a13f2d7-1918-1e87-3287-ff65ed7e91bd.htm` | `scripting/interfaces/IStreamReader.md` |
| `completed` | ITableColumnInfo Interface | `19cdc857-8109-0fe9-2ba7-56f560bab1a3.htm` | `scripting/interfaces/ITableColumnInfo.md` |
| `completed` | ITableDataRow Interface | `bac4ee56-5d5e-21bb-412a-3de709c0c5e8.htm` | `scripting/interfaces/ITableDataRow.md` |
| `completed` | ITableInfo Interface | `4968e50f-3ab9-2c19-9f03-036372e5b483.htm` | `scripting/interfaces/ITableInfo.md` |
| `completed` | ITagParserProduct Interface | `8db76607-995a-8a87-d776-8bed56fe380c.htm` | `scripting/interfaces/ITagParserProduct.md` |
| `completed` | ITagParserQuote Interface | `5b4de4a0-0bcd-79c8-bbd8-e3597f5aefd5.htm` | `scripting/interfaces/ITagParserQuote.md` |
| `completed` | ITechnicalDocumentation Interface | `f6b93185-06c4-af2b-3257-42108c6f8895.htm` | `scripting/interfaces/ITechnicalDocumentation.md` |
| `completed` | ITerritory Interface | `a62e9787-ba6d-ab10-156f-10af56d378ad.htm` | `scripting/interfaces/ITerritory.md` |
| `completed` | ITrace Interface | `c4ee684c-35a3-08fa-e628-1d145bd0cf81.htm` | `scripting/interfaces/ITrace.md` |
| `completed` | ITranslation Interface | `0e7333b6-790e-bb71-628a-d4efbb8f4901.htm` | `scripting/interfaces/ITranslation.md` |
| `completed` | IUser Interface | `4ac7e805-b224-cc3f-31c4-80a97c4b5da0.htm` | `scripting/interfaces/IUser.md` |
| `completed` | IUserCustomField Interface | `d1c22a5d-c408-0e7e-172b-2a1b0c52f642.htm` | `scripting/interfaces/IUserCustomField.md` |
| `completed` | IUserCustomFieldAttributeValue Interface | `6bc54e3b-7104-c241-34d1-cf100f74f364.htm` | `scripting/interfaces/IUserCustomFieldAttributeValue.md` |
| `completed` | IUserCustomFieldAttributeValueCollection Interface | `470f886e-4884-d9a4-de01-94acfaf4cd72.htm` | `scripting/interfaces/IUserCustomFieldAttributeValueCollection.md` |
| `completed` | IUserCustomFieldCollection Interface | `47414fab-6700-85d3-f878-81b245430bc8.htm` | `scripting/interfaces/IUserCustomFieldCollection.md` |
| `completed` | IUserPersonalizationHelper Interface | `6eceaf55-1568-04a5-cf11-c01a9af522d7.htm` | `scripting/interfaces/IUserPersonalizationHelper.md` |
| `completed` | IUserType Interface | `3cbe2e0e-c3c8-49c3-f4aa-9e9712687413.htm` | `scripting/interfaces/IUserType.md` |
| `completed` | IVCCondition Interface | `ecf78342-a680-48e3-aacd-262c225f4c29.htm` | `scripting/interfaces/IVCCondition.md` |
| `completed` | IVCConditionsWithPurpose Interface | `2250bea3-008e-fc4f-e051-4e832111b5d7.htm` | `scripting/interfaces/IVCConditionsWithPurpose.md` |
| `completed` | IVCPricingResponse Interface | `a7198e7d-9fbd-48e6-f508-12cccda6f6bb.htm` | `scripting/interfaces/IVCPricingResponse.md` |
| `completed` | IVCResponseItem Interface | `d49aca53-c2d0-9ffb-2015-ba6cb3ebf224.htm` | `scripting/interfaces/IVCResponseItem.md` |
| `completed` | IVCSubtotal Interface | `7166cffa-3e56-ba77-a71e-98e29a8e8f08.htm` | `scripting/interfaces/IVCSubtotal.md` |
| `completed` | IWebServiceHelper Interface | `11ffd861-96d2-5b4e-58e5-6867a0c1ed83.htm` | `scripting/interfaces/IWebServiceHelper.md` |
| `completed` | IWorkbook Interface | `ef0e62e8-05fd-a6b7-46eb-b72373dd33bf.htm` | `scripting/interfaces/IWorkbook.md` |
| `completed` | IWorkbookCells Interface | `dd60d598-760e-62a4-c66d-430e91696786.htm` | `scripting/interfaces/IWorkbookCells.md` |
| `completed` | IWorkbookSheet Interface | `6047bbaa-c0b9-afc8-08f1-a6858ab72b25.htm` | `scripting/interfaces/IWorkbookSheet.md` |
| `completed` | IWorkflowContext Interface | `4ed6891c-d465-975f-64cf-841f673cbe78.htm` | `scripting/interfaces/IWorkflowContext.md` |
| `completed` | IWorkflowExecutor Interface | `d570140a-2bb5-17ac-ac2e-a6dc444031cd.htm` | `scripting/interfaces/IWorkflowExecutor.md` |
| `completed` | IXmlHelper Interface | `36fe27c6-1b9a-b02d-92f9-2d86ca8fc1b0.htm` | `scripting/interfaces/IXmlHelper.md` |

---

## Job 3: REST API (Swagger)

| Status | Item | Source URL | Target File |
|--------|------|-----------|-------------|
| `completed` | Full OpenAPI spec | `https://default-us1-prd-01.cpq.cloud.sap/swagger/docs/v1` | `rest-api/swagger.json` |
| `completed` | Endpoint summary | Generated from swagger.json | `rest-api/summary.md` |

---

## Job 4: SAP Help Portal Guides (JS-rendered — needs Playwright)

**To run:** `cd knowledge/sap-cpq/tools && npm install && npm run crawl:portal`
Script: `tools/crawl-portal.js` — auto-discovers nav links, resumes on re-run.

| Status | Item | Source URL | Target File |
|--------|------|-----------|-------------|
| `pending` | Portal home | `https://help.sap.com/docs/SAP_CPQ` | `portal/` (auto-named by crawler) |
| `pending` | API Guide | `https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/7be8a894a6dd45f7806f11c86f5b7c11.html` | `portal/` (auto-named by crawler) |

| `failed: page.waitForTimeout: Target page, context or browser has bee` | https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/a3a3eefa8a944667aae1b13e620443e2.html#related-information | https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/a3a3eefa8a944667aae1b13e620443e2.html#related-information | portal/884885f05e6b4c8082254d4d9d63f19b-a3a3eefa8a944667aae1b13e620443e2-html.md |
| `failed: page.waitForTimeout: Target page, context or browser has bee` | https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/35e2aebd3cbe47f0a103a813ec6796ae.html#data-sent-to-the-destination-environment | https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/35e2aebd3cbe47f0a103a813ec6796ae.html#data-sent-to-the-destination-environment | portal/884885f05e6b4c8082254d4d9d63f19b-35e2aebd3cbe47f0a103a813ec6796ae-html.md |
---

## Progress Summary

| Job | Total | Completed | Failed | Pending |
|-----|-------|-----------|--------|---------|
| Job 1: Namespace overviews | 9 | 9 | 0 | 0 |
| Job 2: Interface detail pages | 162 | 162 | 0 | 0 |
| Job 3: REST API spec | 2 | 2 | 0 | 0 |
| Job 4: Portal guides (Playwright) | 2+ | 0 | 0 | 2+ |
| **Total** | **174** | **0** | **0** | **174** |
