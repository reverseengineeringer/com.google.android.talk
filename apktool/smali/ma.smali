.class public final Lma;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lmb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 204
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 205
    new-instance v0, Lmc;

    invoke-direct {v0}, Lmc;-><init>()V

    sput-object v0, Lma;->a:Lmb;

    .line 213
    :goto_0
    return-void

    .line 206
    :cond_0
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 207
    new-instance v0, Lmb;

    invoke-direct {v0, v2}, Lmb;-><init>(B)V

    sput-object v0, Lma;->a:Lmb;

    goto :goto_0

    .line 208
    :cond_1
    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 209
    new-instance v0, Lmb;

    invoke-direct {v0, v2}, Lmb;-><init>(C)V

    sput-object v0, Lma;->a:Lmb;

    goto :goto_0

    .line 211
    :cond_2
    new-instance v0, Lmb;

    invoke-direct {v0}, Lmb;-><init>()V

    sput-object v0, Lma;->a:Lmb;

    goto :goto_0
.end method
