.class final Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onRefreshState$$inlined$forEach$lambda$1;
.super Ljava/lang/Object;
.source "ControlsUiControllerImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->onRefreshState(Landroid/content/ComponentName;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $cws:Lcom/android/systemui/controls/ui/ControlWithState;

.field final synthetic $key:Lcom/android/systemui/controls/ui/ControlKey;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/ControlKey;Lcom/android/systemui/controls/ui/ControlWithState;Landroid/service/controls/Control;Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onRefreshState$$inlined$forEach$lambda$1;->$key:Lcom/android/systemui/controls/ui/ControlKey;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onRefreshState$$inlined$forEach$lambda$1;->$cws:Lcom/android/systemui/controls/ui/ControlWithState;

    iput-object p4, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onRefreshState$$inlined$forEach$lambda$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onRefreshState$$inlined$forEach$lambda$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->access$getControlViewsById$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onRefreshState$$inlined$forEach$lambda$1;->$key:Lcom/android/systemui/controls/ui/ControlKey;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onRefreshState$$inlined$forEach$lambda$1;->$cws:Lcom/android/systemui/controls/ui/ControlWithState;

    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->bindData(Lcom/android/systemui/controls/ui/ControlWithState;)V

    :cond_0
    return-void
.end method
