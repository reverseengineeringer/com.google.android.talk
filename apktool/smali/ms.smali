.class public final Lms;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lmu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 99
    new-instance v0, Lmt;

    invoke-direct {v0}, Lmt;-><init>()V

    sput-object v0, Lms;->a:Lmu;

    .line 105
    :goto_0
    return-void

    .line 100
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 101
    new-instance v0, Lmu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmu;-><init>(B)V

    sput-object v0, Lms;->a:Lmu;

    goto :goto_0

    .line 103
    :cond_1
    new-instance v0, Lmu;

    invoke-direct {v0}, Lmu;-><init>()V

    sput-object v0, Lms;->a:Lmu;

    goto :goto_0
.end method

.method public static a(Landroid/view/accessibility/AccessibilityEvent;)Lnq;
    .locals 1

    .prologue
    .line 284
    new-instance v0, Lnq;

    invoke-direct {v0, p0}, Lnq;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
