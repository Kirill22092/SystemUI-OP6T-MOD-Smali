.class public final synthetic Lcom/android/systemui/qs/-$$Lambda$4RRpk2g2DG1jxcebU4uq2xyjwbI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/qs/-$$Lambda$4RRpk2g2DG1jxcebU4uq2xyjwbI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$4RRpk2g2DG1jxcebU4uq2xyjwbI;

    invoke-direct {v0}, Lcom/android/systemui/qs/-$$Lambda$4RRpk2g2DG1jxcebU4uq2xyjwbI;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/-$$Lambda$4RRpk2g2DG1jxcebU4uq2xyjwbI;->INSTANCE:Lcom/android/systemui/qs/-$$Lambda$4RRpk2g2DG1jxcebU4uq2xyjwbI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->postAnimateCollapsePanels()V

    return-void
.end method
