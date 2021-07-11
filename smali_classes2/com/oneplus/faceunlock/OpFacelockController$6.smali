.class Lcom/oneplus/faceunlock/OpFacelockController$6;
.super Ljava/lang/Object;
.source "OpFacelockController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/OpFacelockController;->tryToStartFaceLockAfterScreenOn()V
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

    .line 1133
    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$6;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1137
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$6;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2402(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z

    .line 1138
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$6;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/faceunlock/OpFacelockController;->tryToStartFaceLock(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1140
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$6;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2500(Lcom/oneplus/faceunlock/OpFacelockController;)V

    :cond_0
    return-void
.end method
