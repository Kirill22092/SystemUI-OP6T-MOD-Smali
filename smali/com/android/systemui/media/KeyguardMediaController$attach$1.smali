.class final Lcom/android/systemui/media/KeyguardMediaController$attach$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KeyguardMediaController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/KeyguardMediaController;->attach(Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/KeyguardMediaController;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/KeyguardMediaController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/KeyguardMediaController$attach$1;->this$0:Lcom/android/systemui/media/KeyguardMediaController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/KeyguardMediaController$attach$1;->invoke(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/KeyguardMediaController$attach$1;->this$0:Lcom/android/systemui/media/KeyguardMediaController;

    invoke-static {p0}, Lcom/android/systemui/media/KeyguardMediaController;->access$updateVisibility(Lcom/android/systemui/media/KeyguardMediaController;)V

    return-void
.end method
