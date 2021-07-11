.class public final synthetic Lcom/android/systemui/power/-$$Lambda$InattentiveSleepWarningView$TZ7t_oJYmI3UsEhfACXbN6lQYjI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/power/-$$Lambda$InattentiveSleepWarningView$TZ7t_oJYmI3UsEhfACXbN6lQYjI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/power/-$$Lambda$InattentiveSleepWarningView$TZ7t_oJYmI3UsEhfACXbN6lQYjI;

    invoke-direct {v0}, Lcom/android/systemui/power/-$$Lambda$InattentiveSleepWarningView$TZ7t_oJYmI3UsEhfACXbN6lQYjI;-><init>()V

    sput-object v0, Lcom/android/systemui/power/-$$Lambda$InattentiveSleepWarningView$TZ7t_oJYmI3UsEhfACXbN6lQYjI;->INSTANCE:Lcom/android/systemui/power/-$$Lambda$InattentiveSleepWarningView$TZ7t_oJYmI3UsEhfACXbN6lQYjI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/systemui/power/InattentiveSleepWarningView;->lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
