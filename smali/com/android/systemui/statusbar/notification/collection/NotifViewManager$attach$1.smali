.class final Lcom/android/systemui/statusbar/notification/collection/NotifViewManager$attach$1;
.super Ljava/lang/Object;
.source "NotifViewManager.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$OnRenderListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->attach(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager$attach$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRenderList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "entries"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager$attach$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->onNotifTreeBuilt(Ljava/util/List;)V

    return-void
.end method
