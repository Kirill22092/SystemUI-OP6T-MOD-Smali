.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipAccessibilityInteractionConnection$ooTCZxn3Zqg4Jawuz5C0YCDXc2E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipAccessibilityInteractionConnection$ooTCZxn3Zqg4Jawuz5C0YCDXc2E;->f$0:Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipAccessibilityInteractionConnection$ooTCZxn3Zqg4Jawuz5C0YCDXc2E;->f$0:Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->lambda$setToExpandedBounds$1$PipAccessibilityInteractionConnection(Landroid/graphics/Rect;)V

    return-void
.end method
