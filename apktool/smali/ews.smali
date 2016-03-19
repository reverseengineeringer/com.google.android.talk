.class final Lews;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbhj;


# instance fields
.field private final a:Lawo;


# direct methods
.method constructor <init>(Lawo;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lews;->a:Lawo;

    .line 17
    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lews;->a:Lawo;

    invoke-interface {v0, p1}, Lawo;->p(I)Z

    move-result v0

    return v0
.end method
