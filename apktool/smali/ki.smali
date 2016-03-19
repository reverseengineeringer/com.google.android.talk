.class public final Lki;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 59
    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 60
    new-instance v0, Lkk;

    .line 1045
    invoke-direct {v0}, Lkk;-><init>()V

    .line 60
    sput-object v0, Lki;->a:Lkl;

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    new-instance v0, Lkj;

    .line 2033
    invoke-direct {v0}, Lkj;-><init>()V

    .line 62
    sput-object v0, Lki;->a:Lkl;

    goto :goto_0
.end method
