.class final Lcom/android/systemui/media/MediaResumeListener$onMediaDataLoaded$1;
.super Ljava/lang/Object;
.source "MediaResumeListener.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaResumeListener;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $inf:Ljava/util/List;

.field final synthetic $key:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/media/MediaResumeListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaResumeListener;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaResumeListener$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    iput-object p2, p0, Lcom/android/systemui/media/MediaResumeListener$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/media/MediaResumeListener$onMediaDataLoaded$1;->$inf:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    iget-object v1, p0, Lcom/android/systemui/media/MediaResumeListener$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener$onMediaDataLoaded$1;->$inf:Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "inf!!.get(0)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    const-string v2, "inf!!.get(0).componentInfo"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    const-string v2, "inf!!.get(0).componentInfo.componentName"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, p0}, Lcom/android/systemui/media/MediaResumeListener;->access$tryUpdateResumptionList(Lcom/android/systemui/media/MediaResumeListener;Ljava/lang/String;Landroid/content/ComponentName;)V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p0, 0x0

    throw p0
.end method
