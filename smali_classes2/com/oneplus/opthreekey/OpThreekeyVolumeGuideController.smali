.class public interface abstract Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideController;
.super Ljava/lang/Object;
.source "OpThreekeyVolumeGuideController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideController$IOpThreekeyVolumeGuideControllerCallBack;,
        Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideController$UserActivityListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideController$IOpThreekeyVolumeGuideControllerCallBack;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract init(ILcom/oneplus/opthreekey/OpThreekeyVolumeGuideController$UserActivityListener;)V
.end method

.method public abstract isNeedToShowGuideUi(IZ)I
.end method
