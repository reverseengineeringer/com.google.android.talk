.class final Llac;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Llac;


# instance fields
.field final b:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 244
    new-instance v0, Llac;

    new-instance v1, Llad;

    const-string v2, "Failure occurred while trying to finish a future."

    invoke-direct {v1, v2}, Llad;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Llac;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Llac;->a:Llac;

    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    iput-object v0, p0, Llac;->b:Ljava/lang/Throwable;

    .line 256
    return-void
.end method
