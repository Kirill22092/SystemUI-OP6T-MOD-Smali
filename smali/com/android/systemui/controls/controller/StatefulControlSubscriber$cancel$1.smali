.class final Lcom/android/systemui/controls/controller/StatefulControlSubscriber$cancel$1;
.super Ljava/lang/Object;
.source "StatefulControlSubscriber.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStatefulControlSubscriber.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StatefulControlSubscriber.kt\ncom/android/systemui/controls/controller/StatefulControlSubscriber$cancel$1\n*L\n1#1,98:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/controller/StatefulControlSubscriber;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/controller/StatefulControlSubscriber;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$cancel$1;->this$0:Lcom/android/systemui/controls/controller/StatefulControlSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$cancel$1;->this$0:Lcom/android/systemui/controls/controller/StatefulControlSubscriber;

    invoke-static {v0}, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->access$getSubscriptionOpen$p(Lcom/android/systemui/controls/controller/StatefulControlSubscriber;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$cancel$1;->this$0:Lcom/android/systemui/controls/controller/StatefulControlSubscriber;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->access$setSubscriptionOpen$p(Lcom/android/systemui/controls/controller/StatefulControlSubscriber;Z)V

    iget-object v0, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$cancel$1;->this$0:Lcom/android/systemui/controls/controller/StatefulControlSubscriber;

    invoke-static {v0}, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->access$getSubscription$p(Lcom/android/systemui/controls/controller/StatefulControlSubscriber;)Landroid/service/controls/IControlsSubscription;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$cancel$1;->this$0:Lcom/android/systemui/controls/controller/StatefulControlSubscriber;

    invoke-static {v1}, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->access$getProvider$p(Lcom/android/systemui/controls/controller/StatefulControlSubscriber;)Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->cancelSubscription(Landroid/service/controls/IControlsSubscription;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$cancel$1;->this$0:Lcom/android/systemui/controls/controller/StatefulControlSubscriber;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->access$setSubscription$p(Lcom/android/systemui/controls/controller/StatefulControlSubscriber;Landroid/service/controls/IControlsSubscription;)V

    :cond_1
    return-void
.end method
