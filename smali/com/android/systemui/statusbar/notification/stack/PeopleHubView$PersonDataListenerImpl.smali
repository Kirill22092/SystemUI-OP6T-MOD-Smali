.class final Lcom/android/systemui/statusbar/notification/stack/PeopleHubView$PersonDataListenerImpl;
.super Ljava/lang/Object;
.source "PeopleHubView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PersonDataListenerImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPeopleHubView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PeopleHubView.kt\ncom/android/systemui/statusbar/notification/stack/PeopleHubView$PersonDataListenerImpl\n*L\n1#1,141:1\n*E\n"
.end annotation


# instance fields
.field private final avatarView:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;Landroid/widget/ImageView;)V
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")V"
        }
    .end annotation

    const-string p1, "avatarView"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/PeopleHubView$PersonDataListenerImpl;->avatarView:Landroid/widget/ImageView;

    return-void
.end method
