.class final Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;
.super Ljava/lang/Object;
.source "ControlsUiControllerImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1;->onServicesUpdated(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $lastItems:Ljava/util/List;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;->$lastItems:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1;

    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->access$getParent$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;->$lastItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1;

    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1;->$onResult:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;->$lastItems:Ljava/util/List;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
