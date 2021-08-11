.class public final Lcom/android/systemui/util/magnetictarget/MagnetizedObject$Companion$initHapticSettingObserver$hapticSettingObserver$1;
.super Landroid/database/ContentObserver;
.source "MagnetizedObject.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/magnetictarget/MagnetizedObject$Companion;->initHapticSettingObserver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$Companion$initHapticSettingObserver$hapticSettingObserver$1;->$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$Companion$initHapticSettingObserver$hapticSettingObserver$1;->$context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "haptic_feedback_enabled"

    const/4 v0, 0x0

    const/4 v1, -0x2

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->access$setSystemHapticsEnabled$cp(Z)V

    return-void
.end method
