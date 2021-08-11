.class Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$3;
.super Ljava/lang/Object;
.source "OpThreekeyVolumeGuideControllerImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->showInfoDialog(IIIIILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const-string p0, "OpThreekeyVolumeGuideControllerImpl"

    const-string p1, "showInfoDialog, onDismiss"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
