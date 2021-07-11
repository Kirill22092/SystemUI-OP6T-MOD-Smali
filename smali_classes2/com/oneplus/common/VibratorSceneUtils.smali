.class public Lcom/oneplus/common/VibratorSceneUtils;
.super Ljava/lang/Object;
.source "VibratorSceneUtils.java"


# direct methods
.method public static getVibratorScenePattern(Landroid/content/Context;Landroid/os/Vibrator;I)[J
    .locals 7

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 76
    fill-array-data v1, :array_0

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "vibrate_on_touch_intensity"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 78
    aget p0, v1, p0

    if-eqz p1, :cond_0

    .line 81
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setVibratorEffect"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v4, [Ljava/lang/Object;

    .line 84
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-array p2, v0, [J

    int-to-long v0, p0

    aput-wide v0, p2, v3

    const-wide/16 v0, 0x0

    aput-wide v0, p2, v4

    const/4 p0, 0x2

    int-to-long v0, p1

    aput-wide v0, p2, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 89
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x2
        -0x3
    .end array-data
.end method

.method public static systemVibrateEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "haptic_feedback_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static vibrateIfNeeded(Landroid/view/View;[JLandroid/os/Vibrator;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/16 v0, 0x12e

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, -0x1

    .line 114
    :try_start_0
    invoke-virtual {p2, p1, v1}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p0, :cond_1

    .line 118
    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 123
    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1
    :goto_0
    return-void
.end method
