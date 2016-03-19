.class public final Ltf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lwe;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lwe;)V
    .locals 0

    .prologue
    .line 3790
    iput-object p1, p0, Ltf;->a:Lwe;

    invoke-direct {p0}, Ltf;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lza;
    .locals 1

    .prologue
    .line 1793
    iget-object v0, p0, Ltf;->a:Lwe;

    .line 2052
    iget-object v0, v0, Lwe;->i:Lwf;

    .line 1793
    if-eqz v0, :cond_0

    iget-object v0, p0, Ltf;->a:Lwe;

    .line 3052
    iget-object v0, v0, Lwe;->i:Lwf;

    .line 1793
    invoke-virtual {v0}, Lwf;->d()Lza;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
