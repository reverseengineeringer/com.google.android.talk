.class final Ligd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ligc;


# direct methods
.method constructor <init>(Ligc;I)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Ligd;->b:Ligc;

    iput p2, p0, Ligd;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 138
    iget-object v0, p0, Ligd;->b:Ligc;

    iget v1, p0, Ligd;->a:I

    new-array v2, v3, [Ljava/lang/String;

    new-array v3, v3, [I

    invoke-virtual {v0, v1, v2, v3}, Ligc;->a(I[Ljava/lang/String;[I)V

    .line 140
    return-void
.end method
