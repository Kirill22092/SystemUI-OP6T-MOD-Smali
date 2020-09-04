.class Lcom/android/systemui/statusbar/policy/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field static final CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final DEBUG:Z

.field static final E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FIVE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FIVE_G_BASIC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FIVE_G_SA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FIVE_G_UWB:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FLIGHT_MODE_ICON:I

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

.field static final ICON_5G:I

.field static final ICON_5G_BASIC:I

.field static final ICON_5G_E:I

.field static final ICON_5G_PLUS:I

.field static final ICON_5G_SA:I

.field static final ICON_5G_UWB:I

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

.field static final LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_CA_5G_E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final NOT_DEFAULT_DATA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final NR_5G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final NR_5G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING:[I

.field static final ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING_FIVE_BAR:[I

.field static final ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING_FOUR_BAR:[I

.field static final ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL:[I

.field static final ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL_FIVE_BAR:[I

.field static final ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL_FOUR_BAR:[I

.field static final ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final SIGNAL_LEVEL_NUM:I

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

.field static final TELEPHONY_SIGNAL_STRENGTH_ROAMING_R:[[I

.field static final THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field private static isInitiated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 58
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_airplane_mode:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FLIGHT_MODE_ICON:I

    .line 80
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_lte:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_LTE:I

    .line 81
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_lte_plus:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_LTE_PLUS:I

    .line 82
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_g:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_G:I

    .line 83
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_e:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_E:I

    .line 84
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_h:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_H:I

    .line 86
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_h_plus:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_H_PLUS:I

    .line 89
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_2g:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_2G:I

    .line 91
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_3g:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_3G:I

    .line 93
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_3g_plus:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_3G_PLUS:I

    .line 95
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_4g:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_4G:I

    .line 96
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_4g_plus:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_4G_PLUS:I

    .line 97
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_1x:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_1X:I

    .line 100
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_5g:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G:I

    .line 101
    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_SA:I

    .line 102
    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_BASIC:I

    .line 103
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_5g_uwb:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_UWB:I

    .line 104
    sget v0, Lcom/android/systemui/R$drawable;->ic_5g_e_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_E:I

    .line 105
    sget v0, Lcom/android/systemui/R$drawable;->ic_5g_plus_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_PLUS:I

    .line 108
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_op_stacked_1x:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_1X:I

    .line 109
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_op_stacked_g:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_G:I

    .line 110
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_op_stacked_2g:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_2G:I

    .line 111
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_op_stacked_3g:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_3G:I

    .line 112
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_op_stacked_4g:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_4G:I

    .line 113
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_op_stacked_4g_plus:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_4G_PLUS:I

    .line 114
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_op_stacked_lte:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_LTE:I

    .line 115
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_op_stacked_lte_plus:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_LTE_PLUS:I

    .line 116
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_op_stacked_roam:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_ROAM:I

    .line 119
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_disabled:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_DATA_DISABLED:I

    .line 123
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

    .line 136
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

    .line 149
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    const-string v2, "WFC"

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 160
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

    .line 171
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_edge:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_E:I

    const-string v2, "E"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 184
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

    .line 197
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_gprs:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_G:I

    const-string v2, "G"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 210
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

    .line 223
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_3_5g_plus:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_H_PLUS:I

    const-string v2, "H+"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 236
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

    .line 249
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

    .line 262
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_lte:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_LTE:I

    const-string v16, "LTE"

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 275
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_lte_plus:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_LTE_PLUS:I

    const-string v2, "LTE+"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 288
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_5ge:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_E:I

    const-string v16, "5Ge"

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 301
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_5g:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G:I

    const-string v2, "5G"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NR_5G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 315
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_5g_plus:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_PLUS:I

    const-string v16, "5G_PLUS"

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NR_5G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 329
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

    .line 347
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

    .line 363
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_5g:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G:I

    const-string v2, "5G"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 376
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_5g_basic:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_BASIC:I

    const-string v16, "5GBasic"

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_BASIC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 389
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_5g_uwb:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_UWB:I

    const-string v2, "5GUWB"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_UWB:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 402
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_5g_sa:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_SA:I

    const-string v16, "5GSA"

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_SA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 418
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_2g:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_2G:I

    const-string v2, "2G"

    const/4 v13, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 432
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_3_5g:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_3G_PLUS:I

    const-string v16, "3G+"

    const/16 v27, 0x1

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 447
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_lte:I

    sget v12, Lcom/oneplus/signal/OpSignalIcons;->FOUR_G_LTE:I

    const-string v2, "LTE"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 488
    sget v0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->SIGNAL_LEVEL_NUM:I

    const/4 v0, 0x3

    const-string v1, "TelephonyIcons"

    .line 491
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DEBUG:Z

    .line 508
    sput-boolean v14, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->isInitiated:Z

    .line 844
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    .line 845
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v3, "carrier_network_change"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v3, "3g"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v3, "wfc"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v3, "unknown"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v3, "e"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v3, "1x"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v3, "g"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v3, "h"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v3, "h+"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v3, "4g"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v3, "4g+"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v3, "5ge"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v3, "lte"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v3, "lte+"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NR_5G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v3, "5g"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NR_5G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v3, "5g_plus"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v3, "datadisable"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v3, "notdefaultdata"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_signal_null:I

    sput v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    const/4 v1, 0x2

    new-array v2, v1, [[I

    const/4 v3, 0x5

    new-array v4, v3, [I

    .line 1005
    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_0:I

    aput v5, v4, v14

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_1:I

    const/4 v6, 0x1

    aput v5, v4, v6

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_2:I

    aput v5, v4, v1

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_3:I

    aput v5, v4, v0

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_4:I

    const/4 v7, 0x4

    aput v5, v4, v7

    aput-object v4, v2, v14

    new-array v4, v3, [I

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_0_fully:I

    aput v5, v4, v14

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_1_fully:I

    aput v5, v4, v6

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_2_fully:I

    aput v5, v4, v1

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_3_fully:I

    aput v5, v4, v0

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_4_fully:I

    aput v5, v4, v7

    aput-object v4, v2, v6

    sput-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FOUR_BAR:[[I

    new-array v2, v1, [[I

    new-array v4, v3, [I

    .line 1020
    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_0_default_roam:I

    aput v5, v4, v14

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_1_default_roam:I

    aput v5, v4, v6

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_2_default_roam:I

    aput v5, v4, v1

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_3_default_roam:I

    aput v5, v4, v0

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_4_default_roam:I

    aput v5, v4, v7

    aput-object v4, v2, v14

    new-array v4, v3, [I

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_0_default_fully_roam:I

    aput v5, v4, v14

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_1_default_fully_roam:I

    aput v5, v4, v6

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_2_default_fully_roam:I

    aput v5, v4, v1

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_3_default_fully_roam:I

    aput v5, v4, v0

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_4_default_fully_roam:I

    aput v5, v4, v7

    aput-object v4, v2, v6

    sput-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_R:[[I

    new-array v2, v3, [I

    .line 1034
    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_0_op_4_bar_virtual:I

    aput v4, v2, v14

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_1_op_4_bar_virtual:I

    aput v4, v2, v6

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_2_op_4_bar_virtual:I

    aput v4, v2, v1

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_3_op_4_bar_virtual:I

    aput v4, v2, v0

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_4_op_4_bar_virtual:I

    aput v4, v2, v7

    sput-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL_FOUR_BAR:[I

    new-array v2, v3, [I

    .line 1044
    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_oneplus_roam_0:I

    aput v4, v2, v14

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_oneplus_roam_1:I

    aput v4, v2, v6

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_oneplus_roam_2:I

    aput v4, v2, v1

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_oneplus_roam_3:I

    aput v4, v2, v0

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_oneplus_roam_4:I

    aput v4, v2, v7

    sput-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING_FOUR_BAR:[I

    new-array v2, v3, [I

    .line 1054
    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_0_op_4_bar_stacked:I

    aput v4, v2, v14

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_1_op_4_bar_stacked:I

    aput v4, v2, v6

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_2_op_4_bar_stacked:I

    aput v4, v2, v1

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_3_op_4_bar_stacked:I

    aput v4, v2, v0

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_4_op_4_bar_stacked:I

    aput v4, v2, v7

    sput-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_STRENGTH_ICONS_FOUR_BAR:[I

    new-array v2, v1, [[I

    const/4 v4, 0x6

    new-array v5, v4, [I

    .line 1064
    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_signal_0_op_5_bar:I

    aput v8, v5, v14

    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_signal_1_op_5_bar:I

    aput v8, v5, v6

    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_signal_2_op_5_bar:I

    aput v8, v5, v1

    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_signal_3_op_5_bar:I

    aput v8, v5, v0

    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_signal_4_op_5_bar:I

    aput v8, v5, v7

    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_signal_5_op_5_bar:I

    aput v8, v5, v3

    aput-object v5, v2, v14

    new-array v5, v4, [I

    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_signal_0_op_5_bar_fully:I

    aput v8, v5, v14

    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_signal_1_op_5_bar_fully:I

    aput v8, v5, v6

    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_signal_2_op_5_bar_fully:I

    aput v8, v5, v1

    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_signal_3_op_5_bar_fully:I

    aput v8, v5, v0

    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_signal_4_op_5_bar_fully:I

    aput v8, v5, v7

    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_signal_5_op_5_bar_fully:I

    aput v8, v5, v3

    aput-object v5, v2, v6

    sput-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FIVE_BAR:[[I

    new-array v2, v4, [I

    .line 1079
    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_0_op_5_bar_virtual:I

    aput v5, v2, v14

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_1_op_5_bar_virtual:I

    aput v5, v2, v6

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_2_op_5_bar_virtual:I

    aput v5, v2, v1

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_3_op_5_bar_virtual:I

    aput v5, v2, v0

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_4_op_5_bar_virtual:I

    aput v5, v2, v7

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_5_op_5_bar_virtual:I

    aput v5, v2, v3

    sput-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL_FIVE_BAR:[I

    new-array v2, v4, [I

    .line 1088
    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_0_op_5_bar_roam:I

    aput v5, v2, v14

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_1_op_5_bar_roam:I

    aput v5, v2, v6

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_2_op_5_bar_roam:I

    aput v5, v2, v1

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_3_op_5_bar_roam:I

    aput v5, v2, v0

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_4_op_5_bar_roam:I

    aput v5, v2, v7

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_signal_5_op_5_bar_roam:I

    aput v5, v2, v3

    sput-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING_FIVE_BAR:[I

    new-array v2, v4, [I

    .line 1097
    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_0_op_5_bar_stacked:I

    aput v4, v2, v14

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_1_op_5_bar_stacked:I

    aput v4, v2, v6

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_2_op_5_bar_stacked:I

    aput v4, v2, v1

    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_signal_3_op_5_bar_stacked:I

    aput v1, v2, v0

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_signal_4_op_5_bar_stacked:I

    aput v0, v2, v7

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_signal_5_op_5_bar_stacked:I

    aput v0, v2, v3

    sput-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_STRENGTH_ICONS_FIVE_BAR:[I

    .line 1106
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportFiveBar()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FIVE_BAR:[[I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FOUR_BAR:[[I

    :goto_0
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 1107
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportFiveBar()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL_FIVE_BAR:[I

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL_FOUR_BAR:[I

    :goto_1
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL:[I

    .line 1108
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportFiveBar()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING_FIVE_BAR:[I

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING_FOUR_BAR:[I

    :goto_2
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING:[I

    .line 1109
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

    .line 993
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING:[I

    .line 995
    aget p0, v0, p0

    return p0
.end method

.method static getOneplusVirtualSimSignalIconId(I)I
    .locals 1

    .line 984
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL:[I

    .line 986
    aget p0, v0, p0

    return p0
.end method

.method static getStackedDataIcon(IIZ)[I
    .locals 3

    .line 936
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_STRENGTH_ICONS:[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 940
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

    .line 969
    sget p2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_G:I

    .line 970
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

    .line 947
    sget p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_LTE:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_4G:I

    :goto_0
    move p2, p0

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 951
    sget p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_LTE_PLUS:I

    goto :goto_0

    :cond_2
    sget p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_4G_PLUS:I

    goto :goto_0

    .line 965
    :cond_3
    sget p2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_2G:I

    goto :goto_1

    .line 960
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
    .locals 2

    .line 895
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_STRENGTH_ICONS:[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 900
    aget p1, v0, p1

    if-eqz p2, :cond_0

    .line 904
    sget p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_ROAM:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x7

    if-eq p0, p2, :cond_3

    const/16 p2, 0xd

    if-eq p0, p2, :cond_1

    .line 917
    sget p2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_1X:I

    .line 918
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknow network type:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "TelephonyIcons"

    invoke-static {p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p0, p2

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 909
    sget p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_LTE:I

    goto :goto_0

    :cond_2
    sget p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_4G:I

    goto :goto_0

    .line 913
    :cond_3
    sget p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICON_1X:I

    :goto_0
    const/4 p2, 0x0

    aput p1, v1, p2

    const/4 p1, 0x1

    aput p0, v1, p1

    return-object v1
.end method
