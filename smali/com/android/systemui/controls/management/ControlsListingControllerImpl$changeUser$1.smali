.class final Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;
.super Ljava/lang/Object;
.source "ControlsListingControllerImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->changeUser(Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $newUser:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;Landroid/os/UserHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;->$newUser:Landroid/os/UserHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->access$getUserChangeInProgress$p(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;->$newUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->access$setCurrentUserId$p(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;I)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->access$getContext$p(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;->$newUser:Landroid/os/UserHandle;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->access$getServiceListingBuilder$p(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    const-string v3, "contextForUser"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ServiceListing;

    invoke-static {v1, v0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->access$setServiceListing$p(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;Lcom/android/settingslib/applications/ServiceListing;)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->access$getServiceListing$p(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;)Lcom/android/settingslib/applications/ServiceListing;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->access$getServiceListingCallback$p(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;)Lcom/android/settingslib/applications/ServiceListing$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/ServiceListing;->addCallback(Lcom/android/settingslib/applications/ServiceListing$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->access$getServiceListing$p(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;)Lcom/android/settingslib/applications/ServiceListing;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/ServiceListing;->setListening(Z)V

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->access$getServiceListing$p(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;)Lcom/android/settingslib/applications/ServiceListing;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/applications/ServiceListing;->reload()V

    :cond_0
    return-void
.end method
