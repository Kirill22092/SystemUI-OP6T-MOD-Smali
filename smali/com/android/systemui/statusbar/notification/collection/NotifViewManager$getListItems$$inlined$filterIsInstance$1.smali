.class public final Lcom/android/systemui/statusbar/notification/collection/NotifViewManager$getListItems$$inlined$filterIsInstance$1;
.super Lkotlin/jvm/internal/Lambda;
.source "_Sequences.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->getListItems(Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_Sequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt$filterIsInstance$1\n*L\n1#1,1941:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/collection/NotifViewManager$getListItems$$inlined$filterIsInstance$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager$getListItems$$inlined$filterIsInstance$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager$getListItems$$inlined$filterIsInstance$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager$getListItems$$inlined$filterIsInstance$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/NotifViewManager$getListItems$$inlined$filterIsInstance$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager$getListItems$$inlined$filterIsInstance$1;->invoke(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 416
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;

    return p0
.end method
