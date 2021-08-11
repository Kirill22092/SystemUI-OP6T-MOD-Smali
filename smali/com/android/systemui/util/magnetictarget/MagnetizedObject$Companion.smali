.class public final Lcom/android/systemui/util/magnetictarget/MagnetizedObject$Companion;
.super Ljava/lang/Object;
.source "MagnetizedObject.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/magnetictarget/MagnetizedObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$initHapticSettingObserver(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$Companion;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$Companion;->initHapticSettingObserver(Landroid/content/Context;)V

    return-void
.end method

.method private final initHapticSettingObserver(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->access$getHapticSettingObserverInitialized$cp()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$Companion$initHapticSettingObserver$hapticSettingObserver$1;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$Companion$initHapticSettingObserver$hapticSettingObserver$1;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "haptic_feedback_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$Companion$initHapticSettingObserver$hapticSettingObserver$1;->onChange(Z)V

    invoke-static {v1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->access$setHapticSettingObserverInitialized$cp(Z)V

    return-void
.end method
