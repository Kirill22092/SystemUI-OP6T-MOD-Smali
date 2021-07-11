.class final Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1;
.super Ljava/lang/Object;
.source "AppAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/AppAdapter$callback$1;->onServicesUpdated(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppAdapter.kt\ncom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1\n*L\n1#1,126:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $serviceInfos:Ljava/util/List;

.field final synthetic this$0:Lcom/android/systemui/controls/management/AppAdapter$callback$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/AppAdapter$callback$1;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/management/AppAdapter$callback$1;

    iput-object p2, p0, Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1;->$serviceInfos:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/management/AppAdapter$callback$1;

    iget-object v0, v0, Lcom/android/systemui/controls/management/AppAdapter$callback$1;->this$0:Lcom/android/systemui/controls/management/AppAdapter;

    invoke-static {v0}, Lcom/android/systemui/controls/management/AppAdapter;->access$getResources$p(Lcom/android/systemui/controls/management/AppAdapter;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v1, "resources.configuration"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    const-string v1, "collator"

    .line 63
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1$$special$$inlined$compareBy$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1$$special$$inlined$compareBy$1;-><init>(Ljava/util/Comparator;)V

    .line 66
    iget-object v0, p0, Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/management/AppAdapter$callback$1;

    iget-object v0, v0, Lcom/android/systemui/controls/management/AppAdapter$callback$1;->this$0:Lcom/android/systemui/controls/management/AppAdapter;

    iget-object v2, p0, Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1;->$serviceInfos:Ljava/util/List;

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/controls/management/AppAdapter;->access$setListOfServices$p(Lcom/android/systemui/controls/management/AppAdapter;Ljava/util/List;)V

    .line 67
    iget-object v0, p0, Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/management/AppAdapter$callback$1;

    iget-object v0, v0, Lcom/android/systemui/controls/management/AppAdapter$callback$1;->$uiExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1$1;

    iget-object p0, p0, Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/management/AppAdapter$callback$1;

    iget-object p0, p0, Lcom/android/systemui/controls/management/AppAdapter$callback$1;->this$0:Lcom/android/systemui/controls/management/AppAdapter;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1$1;-><init>(Lcom/android/systemui/controls/management/AppAdapter;)V

    new-instance p0, Lcom/android/systemui/controls/management/AppAdapter$sam$java_lang_Runnable$0;

    invoke-direct {p0, v1}, Lcom/android/systemui/controls/management/AppAdapter$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
