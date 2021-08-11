.class final Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;
.super Ljava/lang/Object;
.source "ActionReceiver.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/broadcast/ActionReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActionReceiver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActionReceiver.kt\ncom/android/systemui/broadcast/ActionReceiver$onReceive$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,133:1\n1591#2,2:134\n*E\n*S KotlinDebug\n*F\n+ 1 ActionReceiver.kt\ncom/android/systemui/broadcast/ActionReceiver$onReceive$1\n*L\n109#1,2:134\n*E\n"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $id:I

.field final synthetic $intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/systemui/broadcast/ActionReceiver;


# direct methods
.method constructor <init>(Lcom/android/systemui/broadcast/ActionReceiver;Landroid/content/Intent;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;->this$0:Lcom/android/systemui/broadcast/ActionReceiver;

    iput-object p2, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;->$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;->$context:Landroid/content/Context;

    iput p4, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;->$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;->this$0:Lcom/android/systemui/broadcast/ActionReceiver;

    invoke-static {v0}, Lcom/android/systemui/broadcast/ActionReceiver;->access$getReceiverDatas$p(Lcom/android/systemui/broadcast/ActionReceiver;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/ReceiverData;

    invoke-virtual {v1}, Lcom/android/systemui/broadcast/ReceiverData;->getFilter()Landroid/content/IntentFilter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;->$intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->matchCategories(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/broadcast/ReceiverData;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1$$special$$inlined$forEach$lambda$1;

    invoke-direct {v3, v1, p0}, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1$$special$$inlined$forEach$lambda$1;-><init>(Lcom/android/systemui/broadcast/ReceiverData;Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
