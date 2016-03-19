.class public final Lah;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lai;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 28
    new-instance v0, Lhvu;

    invoke-direct {v0}, Lhvu;-><init>()V

    sput-object v0, Lah;->a:Lai;

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    new-instance v0, Lgbi;

    invoke-direct {v0}, Lgbi;-><init>()V

    sput-object v0, Lah;->a:Lai;

    goto :goto_0
.end method
