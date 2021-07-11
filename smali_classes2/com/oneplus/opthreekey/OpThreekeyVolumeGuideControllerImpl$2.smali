.class Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$2;
.super Ljava/lang/Object;
.source "OpThreekeyVolumeGuideControllerImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->showInfoDialog(IIIIILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;Ljava/lang/Runnable;)V
    .locals 0

    .line 311
    iput-object p2, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$2;->val$action:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "OpThreekeyVolumeGuideControllerImpl"

    const-string v0, "showInfoDialog, onShow"

    .line 314
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$2;->val$action:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
