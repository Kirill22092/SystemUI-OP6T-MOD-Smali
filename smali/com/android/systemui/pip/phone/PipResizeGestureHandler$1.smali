.class Lcom/android/systemui/pip/phone/PipResizeGestureHandler$1;
.super Ljava/lang/Object;
.source "PipResizeGestureHandler.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/pip/phone/PipResizeGestureHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/pip/PipBoundsHandler;Lcom/android/systemui/pip/phone/PipMotionHelper;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/pip/PipTaskOrganizer;Ljava/util/function/Function;Ljava/lang/Runnable;Lcom/android/systemui/model/SysUiState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipResizeGestureHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipResizeGestureHandler;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler$1;->this$0:Lcom/android/systemui/pip/phone/PipResizeGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2

    .line 141
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "pip_user_resize"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler$1;->this$0:Lcom/android/systemui/pip/phone/PipResizeGestureHandler;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->access$002(Lcom/android/systemui/pip/phone/PipResizeGestureHandler;Z)Z

    :cond_0
    return-void
.end method
