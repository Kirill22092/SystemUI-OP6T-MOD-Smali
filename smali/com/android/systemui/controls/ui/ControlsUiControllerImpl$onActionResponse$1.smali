.class final Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onActionResponse$1;
.super Ljava/lang/Object;
.source "ControlsUiControllerImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->onActionResponse(Landroid/content/ComponentName;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $key:Lcom/android/systemui/controls/ui/ControlKey;

.field final synthetic $response:I

.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Lcom/android/systemui/controls/ui/ControlKey;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onActionResponse$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onActionResponse$1;->$key:Lcom/android/systemui/controls/ui/ControlKey;

    iput p3, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onActionResponse$1;->$response:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 531
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onActionResponse$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->access$getControlViewsById$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onActionResponse$1;->$key:Lcom/android/systemui/controls/ui/ControlKey;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onActionResponse$1;->$response:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->actionResponse(I)V

    :cond_0
    return-void
.end method
