.class public final Lmv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lmx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 126
    new-instance v0, Lmw;

    invoke-direct {v0}, Lmw;-><init>()V

    sput-object v0, Lmv;->a:Lmx;

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    new-instance v0, Lmx;

    invoke-direct {v0}, Lmx;-><init>()V

    sput-object v0, Lmv;->a:Lmx;

    goto :goto_0
.end method
