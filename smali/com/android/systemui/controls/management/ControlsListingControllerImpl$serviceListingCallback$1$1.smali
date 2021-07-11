.class final Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;
.super Ljava/lang/Object;
.source "ControlsListingControllerImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1;->onServicesReloaded(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsListingControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsListingControllerImpl.kt\ncom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,179:1\n1591#2,2:180\n*E\n*S KotlinDebug\n*F\n+ 1 ControlsListingControllerImpl.kt\ncom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1\n*L\n96#1,2:180\n*E\n"
.end annotation


# instance fields
.field final synthetic $newComponents:Ljava/util/Set;

.field final synthetic $newServices:Ljava/util/List;

.field final synthetic this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1;Ljava/util/Set;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1;

    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;->$newComponents:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;->$newServices:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1;

    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->access$getUserChangeInProgress$p(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;->$newComponents:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1;

    iget-object v1, v1, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->access$getAvailableComponents$p(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceConfig reloaded, count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;->$newComponents:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ControlsListingControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1;

    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;->$newComponents:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->access$setAvailableComponents$p(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;Ljava/util/Set;)V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1;

    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;->$newServices:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->access$setAvailableServices$p(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;Ljava/util/List;)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1;

    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->getCurrentServices()Ljava/util/List;

    move-result-object v0

    .line 96
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1;

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->access$getCallbacks$p(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;)Ljava/util/Set;

    move-result-object p0

    .line 1591
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    .line 97
    invoke-interface {v1, v0}, Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;->onServicesUpdated(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method
