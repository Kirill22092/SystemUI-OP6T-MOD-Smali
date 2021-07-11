.class Lcom/android/systemui/statusbar/policy/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field static final CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FIVE_G_BASIC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FIVE_G_SA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FIVE_G_UWB:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FLIGHT_MODE_ICON:I

.field static final FOUR_FIVE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final ICON_1X:I

.field static final ICON_2G:I

.field static final ICON_3G:I

.field static final ICON_3G_PLUS:I

.field static final ICON_4G:I

.field static final ICON_4G_PLUS:I

.field static final ICON_4_5G:I

.field static final ICON_5G:I

.field static final ICON_5G_BASIC:I

.field static final ICON_5G_E:I

.field static final ICON_5G_PLUS:I

.field static final ICON_5G_SA:I

.field static final ICON_5G_UWB:I

.field static final ICON_5G_X:I

.field static final ICON_DATA_DISABLED:I

.field static final ICON_E:I

.field static final ICON_G:I

.field static final ICON_H:I

.field static final ICON_H_PLUS:I

.field static final ICON_LTE:I

.field static final ICON_LTE_PLUS:I

.field static final ICON_NAME_TO_ICON:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;",
            ">;"
        }
    .end annotation
.end field

.field static final ICON_VOWIFI:I

.field static final ICON_VOWIFI_CALLING:I

.field static final LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_CA_5G_E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final NOT_DEFAULT_DATA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final NR_5G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final NR_5G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final NR_5G_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING:[I

.field static final ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING_FIVE_BAR:[I

.field static final ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING_FOUR_BAR:[I

.field static final ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL:[I

.field static final ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL_FIVE_BAR:[I

.field static final ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL_FOUR_BAR:[I

.field static final ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final STACKED_ICON_1X:I

.field static final STACKED_ICON_2G:I

.field static final STACKED_ICON_3G:I

.field static final STACKED_ICON_4G:I

.field static final STACKED_ICON_4G_PLUS:I

.field static final STACKED_ICON_G:I

.field static final STACKED_ICON_LTE:I

.field static final STACKED_ICON_LTE_PLUS:I

.field static final STACKED_ICON_ROAM:I

.field static final STACKED_STRENGTH_ICONS:[I

.field static final STACKED_STRENGTH_ICONS_FIVE_BAR:[I

.field static final STACKED_STRENGTH_ICONS_FOUR_BAR:[I

.field static final TELEPHONY_NO_NETWORK:I

.field static final TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_FIVE_BAR:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_FOUR_BAR:[[I

.field static final THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final VOWIFI:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final VOWIFI_CALLING:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 39
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_airplane_mode:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FLIGHT_MODE_ICON:I

    .line 61
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_lte:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_LTE:I

    .line 62
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_lte_plus:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_LTE_PLUS:I

    .line 63
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_g:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_G:I

    .line 64
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_e:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_E:I

    .line 65
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_h:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_H:I

    .line 67
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_h_plus:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_H_PLUS:I

    .line 70
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_2g:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_2G:I

    .line 72
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_3g:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_3G:I

    .line 74
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_3g_plus:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_3G_PLUS:I

    .line 76
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_4g:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_4G:I

    .line 77
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_4g_plus:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_4G_PLUS:I

    .line 78
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_1x:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_1X:I

    .line 81
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_4_5g:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_4_5G:I

    .line 84
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_5g:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G:I

    .line 85
    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_SA:I

    .line 86
    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_BASIC:I

    .line 87
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_5g_uwb:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_UWB:I

    .line 88
    sget v0, Lcom/android/systemui/R$drawable;->ic_5g_e_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_E:I

    .line 89
    sget v0, Lcom/android/systemui/R$drawable;->ic_5g_plus_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_PLUS:I

    .line 93
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_5gx_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_X:I

    .line 97
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_op_stacked_1x:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_1X:I

    .line 98
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_op_stacked_g:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_G:I

    .line 99
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_op_stacked_2g:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_2G:I

    .line 100
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_op_stacked_3g:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_3G:I

    .line 101
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_op_stacked_4g:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_4G:I

    .line 102
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_op_stacked_4g_plus:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_4G_PLUS:I

    .line 103
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_op_stacked_lte:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_LTE:I

    .line 104
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_op_stacked_lte_plus:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_LTE_PLUS:I

    .line 105
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_op_stacked_roam:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_ROAM:I

    .line 108
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_disabled:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_DATA_DISABLED:I

    .line 112
    sget v0, Lcom/android/systemui/R$drawable;->ic_vowifi:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_VOWIFI:I

    .line 113
    sget v0, Lcom/android/systemui/R$drawable;->ic_vowifi_calling:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_VOWIFI_CALLING:I

    .line 115
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v14, 0x0

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->carrier_network_change_mode:I

    const-string v2, "CARRIER_NETWORK_CHANGE"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 128
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_3g:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_3G:I

    const-string v16, "3G"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v27, 0x1

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 141
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    const-string v2, "WFC"

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 152
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    const-string v16, "Unknown"

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 163
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_edge:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_E:I

    const-string v2, "E"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 176
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_cdma:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_1X:I

    const-string v16, "1X"

    const/16 v27, 0x1

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 189
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_gprs:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_G:I

    const-string v2, "G"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 202
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_3_5g:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_H:I

    const-string v16, "H"

    const/16 v27, 0x0

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 215
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_3_5g_plus:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_H_PLUS:I

    const-string v2, "H+"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 228
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_4g:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_4G:I

    const-string v16, "4G"

    const/16 v27, 0x1

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 241
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_4g_plus:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_4G_PLUS:I

    const-string v2, "4G+"

    const/4 v13, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 255
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_4_5g:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_4_5G:I

    const-string v16, "4.5G"

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_FIVE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 269
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_lte:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_LTE:I

    const-string v2, "LTE"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 282
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_lte_plus:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_LTE_PLUS:I

    const-string v16, "LTE+"

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 295
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_5ge_html:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_E:I

    const-string v2, "5Ge"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 308
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_5g:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G:I

    const-string v16, "5G"

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NR_5G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 322
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_5g_plus:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_PLUS:I

    const-string v2, "5G_PLUS"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NR_5G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 337
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_5g_x:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_X:I

    const-string v16, "5G_X"

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NR_5G_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 352
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->cell_data_off_content_description:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_DATA_DISABLED:I

    const-string v2, "DataDisabled"

    const/4 v13, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 370
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->not_default_data_content_description:I

    const-string v16, "NotDefaultData"

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 386
    sget-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v0, v0, v14

    .line 399
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_5g_basic:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_BASIC:I

    const-string v2, "5GBasic"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_BASIC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 412
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_5g_uwb:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_UWB:I

    const-string v16, "5GUWB"

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_UWB:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 425
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_5g_sa:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_SA:I

    const-string v2, "5GSA"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_SA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 438
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_VOWIFI:I

    const-string v16, "VoWIFI"

    const/16 v25, 0x0

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->VOWIFI:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 451
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_VOWIFI_CALLING:I

    const-string v2, "VoWIFICall"

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->VOWIFI_CALLING:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 467
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    .line 468
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "carrier_network_change"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "3g"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v2, "wfc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v2, "unknown"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "e"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "1x"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "g"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "h"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "h+"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "4g"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "4g+"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "5ge"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "lte"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "lte+"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NR_5G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "5g"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NR_5G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "5g_plus"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_UWB:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "5guwb"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "datadisable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "notdefaultdata"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_2g:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_2G:I

    const-string v16, "2G"

    const/16 v27, 0x1

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 507
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_3_5g:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_3G_PLUS:I

    const-string v2, "3G+"

    const/4 v13, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 522
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_lte:I

    sget v26, Lcom/oneplus/signal/OpSignalIcons;->FOUR_G_LTE:I

    const-string v16, "LTE"

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 649
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_signal_null:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    const/4 v0, 0x2

    new-array v1, v0, [[I

    const/4 v2, 0x5

    new-array v3, v2, [I

    .line 651
    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_0:I

    aput v4, v3, v14

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_1:I

    const/4 v5, 0x1

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_2:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_3:I

    const/4 v6, 0x3

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_4:I

    const/4 v7, 0x4

    aput v4, v3, v7

    aput-object v3, v1, v14

    new-array v3, v2, [I

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_0_fully:I

    aput v4, v3, v14

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_1_fully:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_2_fully:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_3_fully:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_4_fully:I

    aput v4, v3, v7

    aput-object v3, v1, v5

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FOUR_BAR:[[I

    new-array v1, v2, [I

    .line 666
    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_signal_0_op_4_bar_virtual:I

    aput v3, v1, v14

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_signal_1_op_4_bar_virtual:I

    aput v3, v1, v5

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_signal_2_op_4_bar_virtual:I

    aput v3, v1, v0

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_signal_3_op_4_bar_virtual:I

    aput v3, v1, v6

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_signal_4_op_4_bar_virtual:I

    aput v3, v1, v7

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL_FOUR_BAR:[I

    new-array v1, v2, [I

    .line 676
    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_signal_oneplus_roam_0:I

    aput v3, v1, v14

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_signal_oneplus_roam_1:I

    aput v3, v1, v5

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_signal_oneplus_roam_2:I

    aput v3, v1, v0

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_signal_oneplus_roam_3:I

    aput v3, v1, v6

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_signal_oneplus_roam_4:I

    aput v3, v1, v7

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING_FOUR_BAR:[I

    new-array v1, v2, [I

    .line 686
    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_signal_0_op_4_bar_stacked:I

    aput v3, v1, v14

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_signal_1_op_4_bar_stacked:I

    aput v3, v1, v5

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_signal_2_op_4_bar_stacked:I

    aput v3, v1, v0

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_signal_3_op_4_bar_stacked:I

    aput v3, v1, v6

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_signal_4_op_4_bar_stacked:I

    aput v3, v1, v7

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_STRENGTH_ICONS_FOUR_BAR:[I

    new-array v1, v0, [[I

    const/4 v3, 0x6

    new-array v4, v3, [I

    .line 696
    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_signal_0_op_5_bar:I

    aput v8, v4, v14

    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_signal_1_op_5_bar:I

    aput v8, v4, v5

    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_signal_2_op_5_bar:I

    aput v8, v4, v0

    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_signal_3_op_5_bar:I

    aput v8, v4, v6

    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_signal_4_op_5_bar:I

    aput v8, v4, v7

    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_signal_5_op_5_bar:I

    aput v8, v4, v2

    aput-object v4, v1, v14

    new-array v4, v3, [I

    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_signal_0_op_5_bar_fully:I

    aput v8, v4, v14

    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_signal_1_op_5_bar_fully:I

    aput v8, v4, v5

    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_signal_2_op_5_bar_fully:I

    aput v8, v4, v0

    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_signal_3_op_5_bar_fully:I

    aput v8, v4, v6

    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_signal_4_op_5_bar_fully:I

    aput v8, v4, v7

    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_signal_5_op_5_bar_fully:I

    aput v8, v4, v2

    aput-object v4, v1, v5

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FIVE_BAR:[[I

    new-array v1, v3, [I

    .line 711
    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_0_op_5_bar_virtual:I

    aput v4, v1, v14

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_1_op_5_bar_virtual:I

    aput v4, v1, v5

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_2_op_5_bar_virtual:I

    aput v4, v1, v0

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_3_op_5_bar_virtual:I

    aput v4, v1, v6

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_4_op_5_bar_virtual:I

    aput v4, v1, v7

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_5_op_5_bar_virtual:I

    aput v4, v1, v2

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL_FIVE_BAR:[I

    new-array v1, v3, [I

    .line 720
    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_0_op_5_bar_roam:I

    aput v4, v1, v14

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_1_op_5_bar_roam:I

    aput v4, v1, v5

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_2_op_5_bar_roam:I

    aput v4, v1, v0

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_3_op_5_bar_roam:I

    aput v4, v1, v6

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_4_op_5_bar_roam:I

    aput v4, v1, v7

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_5_op_5_bar_roam:I

    aput v4, v1, v2

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING_FIVE_BAR:[I

    new-array v1, v3, [I

    .line 729
    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_signal_0_op_5_bar_stacked:I

    aput v3, v1, v14

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_signal_1_op_5_bar_stacked:I

    aput v3, v1, v5

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_signal_2_op_5_bar_stacked:I

    aput v3, v1, v0

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_signal_3_op_5_bar_stacked:I

    aput v0, v1, v6

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_signal_4_op_5_bar_stacked:I

    aput v0, v1, v7

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_signal_5_op_5_bar_stacked:I

    aput v0, v1, v2

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_STRENGTH_ICONS_FIVE_BAR:[I

    .line 738
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportFiveBar()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FIVE_BAR:[[I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FOUR_BAR:[[I

    :goto_0
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 739
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportFiveBar()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL_FIVE_BAR:[I

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL_FOUR_BAR:[I

    :goto_1
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL:[I

    .line 740
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportFiveBar()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING_FIVE_BAR:[I

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING_FOUR_BAR:[I

    :goto_2
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING:[I

    .line 741
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportFiveBar()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_STRENGTH_ICONS_FIVE_BAR:[I

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_STRENGTH_ICONS_FOUR_BAR:[I

    :goto_3
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_STRENGTH_ICONS:[I

    return-void
.end method

.method static getOneplusRoamingSignalIconId(I)I
    .locals 1

    .line 639
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING:[I

    .line 641
    aget p0, v0, p0

    return p0
.end method

.method static getOneplusVirtualSimSignalIconId(I)I
    .locals 1

    .line 630
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL:[I

    .line 632
    aget p0, v0, p0

    return p0
.end method

.method static getStackedDataIcon(IIZ)[I
    .locals 3

    .line 582
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_STRENGTH_ICONS:[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 586
    aget p1, v0, p1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_4

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    const/16 v0, 0x11

    if-eq p0, v0, :cond_4

    const/16 v0, 0x13

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    .line 615
    sget p2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_G:I

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknow network type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TelephonyIcons"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_0
    if-eqz p2, :cond_0

    .line 593
    sget p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_LTE:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_4G:I

    :goto_0
    move p2, p0

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 597
    sget p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_LTE_PLUS:I

    goto :goto_0

    :cond_2
    sget p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_4G_PLUS:I

    goto :goto_0

    .line 611
    :cond_3
    sget p2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_2G:I

    goto :goto_1

    .line 606
    :cond_4
    :pswitch_1
    sget p2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_3G:I

    :goto_1
    const/4 p0, 0x0

    aput p1, v1, p0

    const/4 p0, 0x1

    aput p2, v1, p0

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static getStackedVoiceIcon(IIZZ)[I
    .locals 3

    .line 541
    sget v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_1X:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_STRENGTH_ICONS:[I

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 546
    aget p1, v1, p1

    if-eqz p2, :cond_0

    .line 550
    sget v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_ROAM:I

    goto :goto_1

    :cond_0
    const/4 p2, 0x7

    if-eq p0, p2, :cond_3

    const/16 p2, 0xd

    if-eq p0, p2, :cond_1

    .line 564
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknow network type:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "TelephonyIcons"

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 555
    sget p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_LTE:I

    goto :goto_0

    :cond_2
    sget p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_4G:I

    :goto_0
    move v0, p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    aput p1, v2, p0

    const/4 p0, 0x1

    aput v0, v2, p0

    return-object v2
.end method
