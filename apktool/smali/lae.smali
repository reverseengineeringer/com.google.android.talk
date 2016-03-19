.class final Llae;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Llae;


# instance fields
.field final b:Ljava/lang/Runnable;

.field final c:Ljava/util/concurrent/Executor;

.field next:Llae;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 226
    new-instance v0, Llae;

    invoke-direct {v0, v1, v1}, Llae;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sput-object v0, Llae;->a:Llae;

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Llae;->b:Ljava/lang/Runnable;

    .line 235
    iput-object p2, p0, Llae;->c:Ljava/util/concurrent/Executor;

    .line 236
    return-void
.end method
