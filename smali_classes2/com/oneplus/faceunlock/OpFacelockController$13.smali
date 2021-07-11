.class Lcom/oneplus/faceunlock/OpFacelockController$13;
.super Ljava/lang/Object;
.source "OpFacelockController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/OpFacelockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/OpFacelockController;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    .line 1759
    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$13;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1762
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$13;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p2}, Lcom/oneplus/faceunlock/internal/IOPFaceSettingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3602(Lcom/oneplus/faceunlock/OpFacelockController;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    .line 1763
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Connected to FaceSetting service, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oneplus/faceunlock/OpFacelockController$13;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3600(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpFacelockController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$13;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3702(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z

    .line 1765
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$13;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1400(Lcom/oneplus/faceunlock/OpFacelockController;)V

    .line 1766
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$13;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3802(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "OpFacelockController"

    const-string v0, "disconnect from FaceSetting service"

    .line 1772
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$13;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3602(Lcom/oneplus/faceunlock/OpFacelockController;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    .line 1774
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$13;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3702(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z

    .line 1775
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$13;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2300(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setIsFaceAdded(Z)V

    .line 1776
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$13;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0, v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3802(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z

    return-void
.end method
