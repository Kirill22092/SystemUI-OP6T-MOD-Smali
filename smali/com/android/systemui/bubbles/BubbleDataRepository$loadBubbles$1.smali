.class final Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BubbleDataRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bubbles/BubbleDataRepository;->loadBubbles(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBubbleDataRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BubbleDataRepository.kt\ncom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,183:1\n1313#2:184\n1382#2,3:185\n1218#2,12:188\n1241#2:200\n1266#2,3:201\n1269#2,3:211\n1365#2,9:214\n1591#2:223\n240#2,2:224\n1592#2:226\n1374#2:227\n307#3,7:204\n*E\n*S KotlinDebug\n*F\n+ 1 BubbleDataRepository.kt\ncom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1\n*L\n138#1:184\n138#1,3:185\n154#1,12:188\n160#1:200\n160#1,3:201\n160#1,3:211\n163#1,9:214\n163#1:223\n163#1,2:224\n163#1:226\n163#1:227\n160#1,7:204\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.bubbles.BubbleDataRepository$loadBubbles$1"
    f = "BubbleDataRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $cb:Lkotlin/jvm/functions/Function1;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleDataRepository;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/BubbleDataRepository;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1;->this$0:Lcom/android/systemui/bubbles/BubbleDataRepository;

    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1;->$cb:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1;->this$0:Lcom/android/systemui/bubbles/BubbleDataRepository;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1;->$cb:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, p0, p2}, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1;-><init>(Lcom/android/systemui/bubbles/BubbleDataRepository;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1;->label:I

    if-nez v0, :cond_a

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1;->this$0:Lcom/android/systemui/bubbles/BubbleDataRepository;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleDataRepository;->access$getPersistentRepository$p(Lcom/android/systemui/bubbles/BubbleDataRepository;)Lcom/android/systemui/bubbles/storage/BubblePersistentRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/storage/BubblePersistentRepository;->readFromDisk()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1;->this$0:Lcom/android/systemui/bubbles/BubbleDataRepository;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleDataRepository;->access$getVolatileRepository$p(Lcom/android/systemui/bubbles/BubbleDataRepository;)Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;->addBubbles(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/bubbles/storage/BubbleEntity;

    new-instance v3, Lcom/android/systemui/bubbles/ShortcutKey;

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/storage/BubbleEntity;->getUserId()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/storage/BubbleEntity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/android/systemui/bubbles/ShortcutKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/bubbles/ShortcutKey;

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1;->this$0:Lcom/android/systemui/bubbles/BubbleDataRepository;

    invoke-static {v3}, Lcom/android/systemui/bubbles/BubbleDataRepository;->access$getLauncherApps$p(Lcom/android/systemui/bubbles/BubbleDataRepository;)Landroid/content/pm/LauncherApps;

    move-result-object v3

    new-instance v4, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v4}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/ShortcutKey;->getPkg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    move-result-object v4

    const/16 v5, 0x411

    invoke-virtual {v4, v5}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/ShortcutKey;->getUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_2
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    new-instance v4, Lcom/android/systemui/bubbles/ShortcutKey;

    const-string v5, "it"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v5

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v3

    const-string v6, "it.`package`"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v5, v3}, Lcom/android/systemui/bubbles/ShortcutKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/bubbles/storage/BubbleEntity;

    new-instance v4, Lcom/android/systemui/bubbles/ShortcutKey;

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/storage/BubbleEntity;->getUserId()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/storage/BubbleEntity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/bubbles/ShortcutKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/storage/BubbleEntity;->getShortcutId()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "shortcutInfo"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_5

    :cond_7
    move-object v5, v3

    :goto_5
    move-object v8, v5

    check-cast v8, Landroid/content/pm/ShortcutInfo;

    if-eqz v8, :cond_8

    new-instance v3, Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/storage/BubbleEntity;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/storage/BubbleEntity;->getDesiredHeight()I

    move-result v9

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/storage/BubbleEntity;->getDesiredHeightResId()I

    move-result v10

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/storage/BubbleEntity;->getTitle()Ljava/lang/String;

    move-result-object v11

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lcom/android/systemui/bubbles/Bubble;-><init>(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;IILjava/lang/String;)V

    :cond_8
    if-eqz v3, :cond_5

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1;->this$0:Lcom/android/systemui/bubbles/BubbleDataRepository;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleDataRepository;->access$getUiScope$p(Lcom/android/systemui/bubbles/BubbleDataRepository;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1$1;

    invoke-direct {v7, p0, v1, v3}, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1$1;-><init>(Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
