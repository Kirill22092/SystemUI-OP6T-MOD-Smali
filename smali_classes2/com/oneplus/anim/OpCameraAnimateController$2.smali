.class Lcom/oneplus/anim/OpCameraAnimateController$2;
.super Landroid/database/ContentObserver;
.source "OpCameraAnimateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/anim/OpCameraAnimateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/anim/OpCameraAnimateController;


# direct methods
.method constructor <init>(Lcom/oneplus/anim/OpCameraAnimateController;Landroid/os/Handler;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/oneplus/anim/OpCameraAnimateController$2;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onChange(Z)V
    .locals 0

    .line 276
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 277
    iget-object p0, p0, Lcom/oneplus/anim/OpCameraAnimateController$2;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-static {p0}, Lcom/oneplus/anim/OpCameraAnimateController;->access$1300(Lcom/oneplus/anim/OpCameraAnimateController;)V

    return-void
.end method
