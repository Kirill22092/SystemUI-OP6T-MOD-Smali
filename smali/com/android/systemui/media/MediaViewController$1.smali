.class final Lcom/android/systemui/media/MediaViewController$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaViewController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaViewController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/media/MediaHostStatesManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaViewController$1;->this$0:Lcom/android/systemui/media/MediaViewController;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/MediaViewController$1;->invoke(II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(II)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController$1;->this$0:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/media/MediaViewController;->setCurrentWidth(I)V

    .line 178
    iget-object p1, p0, Lcom/android/systemui/media/MediaViewController$1;->this$0:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/media/MediaViewController;->setCurrentHeight(I)V

    .line 179
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController$1;->this$0:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->getSizeChangedListener()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
