.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$rp0KjJSj1GdZ6jXaKpka1OFVb7Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$rp0KjJSj1GdZ6jXaKpka1OFVb7Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$rp0KjJSj1GdZ6jXaKpka1OFVb7Q;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$rp0KjJSj1GdZ6jXaKpka1OFVb7Q;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$rp0KjJSj1GdZ6jXaKpka1OFVb7Q;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$rp0KjJSj1GdZ6jXaKpka1OFVb7Q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->lambda$onExpandClicked$2()Z

    move-result p0

    return p0
.end method
