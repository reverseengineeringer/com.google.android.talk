.class final Lkrm;
.super Lksl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lksl",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lkrm;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lkrm;

    invoke-direct {v0}, Lkrm;-><init>()V

    sput-object v0, Lkrm;->a:Lkrm;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 2042
    sget-object v0, Lkxm;->b:Lkxm;

    .line 31
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lksl;-><init>(Lksm;I)V

    .line 32
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lkrm;->a:Lkrm;

    return-object v0
.end method
