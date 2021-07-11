.class public Lcom/oneplus/util/ThemeColorUtils;
.super Ljava/lang/Object;
.source "ThemeColorUtils.java"


# static fields
.field private static sAccentColor:I = 0x0

.field private static sColors:[I = null

.field private static sCurrentTheme:I = -0x1

.field private static sRedColors:[I = null

.field private static sSpecialTheme:Z = false

.field private static sSubAccentColor:I

.field private static sThemeName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getColor(I)I
    .locals 1

    const/16 v0, 0x64

    if-ne p0, v0, :cond_0

    .line 134
    sget p0, Lcom/oneplus/util/ThemeColorUtils;->sAccentColor:I

    return p0

    :cond_0
    const/16 v0, 0x65

    if-ne p0, v0, :cond_2

    .line 137
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isREDVersion()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 138
    sget p0, Lcom/oneplus/util/ThemeColorUtils;->sAccentColor:I

    return p0

    .line 141
    :cond_1
    sget p0, Lcom/oneplus/util/ThemeColorUtils;->sSubAccentColor:I

    return p0

    .line 144
    :cond_2
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isREDVersion()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    sget-object v0, Lcom/oneplus/util/ThemeColorUtils;->sRedColors:[I

    aget p0, v0, p0

    return p0

    .line 148
    :cond_3
    sget-object v0, Lcom/oneplus/util/ThemeColorUtils;->sColors:[I

    aget p0, v0, p0

    return p0
.end method

.method public static getCurrentTheme()I
    .locals 1

    .line 191
    sget v0, Lcom/oneplus/util/ThemeColorUtils;->sCurrentTheme:I

    return v0
.end method

.method public static getEditTheme()I
    .locals 2

    .line 153
    sget v0, Lcom/oneplus/util/ThemeColorUtils;->sCurrentTheme:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 156
    sget v0, Lcom/android/systemui/R$style;->op_edit_theme_light:I

    return v0

    .line 160
    :cond_0
    sget v0, Lcom/android/systemui/R$style;->op_edit_theme_android:I

    return v0

    .line 158
    :cond_1
    sget v0, Lcom/android/systemui/R$style;->op_edit_theme_dark:I

    return v0
.end method

.method public static getThumbBackground()I
    .locals 2

    .line 178
    sget v0, Lcom/oneplus/util/ThemeColorUtils;->sCurrentTheme:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 181
    sget v0, Lcom/android/systemui/R$drawable;->ripple_background_white:I

    return v0

    .line 185
    :cond_0
    sget v0, Lcom/android/systemui/R$drawable;->ripple_background_dark:I

    return v0

    .line 183
    :cond_1
    sget v0, Lcom/android/systemui/R$drawable;->ripple_background_dark:I

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 69
    sget v1, Lcom/oneplus/util/ThemeColorUtils;->sCurrentTheme:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 70
    sget v1, Lcom/android/systemui/R$array;->qs_theme_colors:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/oneplus/util/ThemeColorUtils;->sThemeName:[Ljava/lang/String;

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->isGoogleDarkTheme(Landroid/content/Context;)Z

    move-result v1

    .line 74
    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->getThemeColor(Landroid/content/Context;)I

    move-result v2

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isGoogleDark="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", opTheme="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ThemeColorUtils"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->isSpecialTheme(Landroid/content/Context;)Z

    move-result v1

    .line 80
    sget v3, Lcom/oneplus/util/ThemeColorUtils;->sCurrentTheme:I

    if-ne v3, v2, :cond_1

    sget-boolean v3, Lcom/oneplus/util/ThemeColorUtils;->sSpecialTheme:Z

    if-eq v3, v1, :cond_2

    .line 82
    :cond_1
    sput v2, Lcom/oneplus/util/ThemeColorUtils;->sCurrentTheme:I

    .line 84
    sput-boolean v1, Lcom/oneplus/util/ThemeColorUtils;->sSpecialTheme:Z

    .line 86
    sget-object v1, Lcom/oneplus/util/ThemeColorUtils;->sThemeName:[Ljava/lang/String;

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const-string v3, "com.android.systemui"

    .line 87
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/oneplus/util/ThemeColorUtils;->sColors:[I

    .line 89
    sget v1, Lcom/android/systemui/R$array;->op_qs_theme_color_red:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/oneplus/util/ThemeColorUtils;->sRedColors:[I

    .line 91
    :cond_2
    invoke-static {p0}, Lcom/oneplus/util/ThemeColorUtils;->updateAccentColor(Landroid/content/Context;)V

    return-void
.end method

.method public static isSpecialTheme()Z
    .locals 1

    .line 197
    sget-boolean v0, Lcom/oneplus/util/ThemeColorUtils;->sSpecialTheme:Z

    return v0
.end method

.method private static updateAccentColor(Landroid/content/Context;)V
    .locals 3

    .line 99
    sget v0, Lcom/android/systemui/R$color;->oneplus_accent_color:I

    invoke-static {p0, v0}, Lcom/oneplus/util/OpUtils;->getThemeAccentColor(Landroid/content/Context;I)I

    move-result v0

    .line 100
    sget v1, Lcom/android/systemui/R$color;->oneplus_sub_accent_color:I

    invoke-static {p0, v1}, Lcom/oneplus/util/OpUtils;->getSubAccentColor(Landroid/content/Context;I)I

    move-result p0

    .line 102
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAccentColor: accentColor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", subAccentColor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThemeColorUtils"

    .line 103
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    sput v0, Lcom/oneplus/util/ThemeColorUtils;->sAccentColor:I

    .line 129
    sput p0, Lcom/oneplus/util/ThemeColorUtils;->sSubAccentColor:I

    return-void
.end method
