.class public final Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper$updateTransformedTypes$1;
.super Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
.source "NotificationConversationTemplateViewWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->updateTransformedTypes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;-><init>()V

    return-void
.end method


# virtual methods
.method public transformFrom(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/TransformableView;F)Z
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/notification/TransformState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/TransformableView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ownState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper$updateTransformedTypes$1;->transformTo(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/TransformableView;F)Z

    move-result p0

    return p0
.end method

.method public transformTo(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/TransformableView;F)Z
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/notification/TransformState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/TransformableView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "ownState"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "otherView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    instance-of p0, p2, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 135
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/TransformState;->ensureVisible()V

    const/4 p0, 0x1

    return p0
.end method
