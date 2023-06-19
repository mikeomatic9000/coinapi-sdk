/**
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 *
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package org.openapitools.client.models


import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * Order time in force options are documented in the separate section: <a href=\"#ems-order-params-tif\">EMS / Starter Guide / Order parameters / Time in force</a> 
 *
 * Values: gOODTILLCANCEL,gOODTILLTIMEEXCHANGE,gOODTILLTIMEOMS,fILLORKILL,iMMEDIATEORCANCEL
 */

@JsonClass(generateAdapter = false)
enum class TimeInForce(val value: kotlin.String) {

    @Json(name = "GOOD_TILL_CANCEL")
    gOODTILLCANCEL("GOOD_TILL_CANCEL"),

    @Json(name = "GOOD_TILL_TIME_EXCHANGE")
    gOODTILLTIMEEXCHANGE("GOOD_TILL_TIME_EXCHANGE"),

    @Json(name = "GOOD_TILL_TIME_OMS")
    gOODTILLTIMEOMS("GOOD_TILL_TIME_OMS"),

    @Json(name = "FILL_OR_KILL")
    fILLORKILL("FILL_OR_KILL"),

    @Json(name = "IMMEDIATE_OR_CANCEL")
    iMMEDIATEORCANCEL("IMMEDIATE_OR_CANCEL");

    /**
     * Override [toString()] to avoid using the enum variable name as the value, and instead use
     * the actual value defined in the API spec file.
     *
     * This solves a problem when the variable name and its value are different, and ensures that
     * the client sends the correct enum values to the server always.
     */
    override fun toString(): String = value

    companion object {
        /**
         * Converts the provided [data] to a [String] on success, null otherwise.
         */
        fun encode(data: kotlin.Any?): kotlin.String? = if (data is TimeInForce) "$data" else null

        /**
         * Returns a valid [TimeInForce] for [data], null otherwise.
         */
        fun decode(data: kotlin.Any?): TimeInForce? = data?.let {
          val normalizedData = "$it".lowercase()
          values().firstOrNull { value ->
            it == value || normalizedData == "$value".lowercase()
          }
        }
    }
}

