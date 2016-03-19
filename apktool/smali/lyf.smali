.class public final Llyf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Llyf;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Llyb;Llyb;)V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Llyb;->eD:Llyd;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Llyb;->eD:Llyd;

    invoke-virtual {v0}, Llyd;->c()Llyd;

    move-result-object v0

    iput-object v0, p1, Llyb;->eD:Llyd;

    .line 339
    :cond_0
    return-void
.end method
