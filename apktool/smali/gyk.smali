.class final Lgyk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgxn;


# instance fields
.field final synthetic a:Lgyj;


# direct methods
.method constructor <init>(Lgyj;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lgyk;->a:Lgyj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public a(I)V
    .locals 6

    .prologue
    .line 50
    const-string v0, "ClearcutLogger"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "ClearcutLogger connection suspended: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method
