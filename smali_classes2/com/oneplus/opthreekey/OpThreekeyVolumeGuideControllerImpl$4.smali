.class Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$4;
.super Ljava/lang/Object;
.source "OpThreekeyVolumeGuideControllerImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->showInfoDialog(IIIIILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;

.field final synthetic val$curType:I


# direct methods
.method constructor <init>(Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$4;->this$0:Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;

    iput p2, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$4;->val$curType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onKey, onDismiss, keyCode:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "OpThreekeyVolumeGuideControllerImpl"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$4;->this$0:Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;

    iget p0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$4;->val$curType:I

    invoke-virtual {p1, p0}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->dismiss(I)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
