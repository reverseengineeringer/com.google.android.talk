.class final Layf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laxy;


# instance fields
.field private final a:Layd;


# direct methods
.method constructor <init>(Layd;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Layf;->a:Layd;

    .line 13
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Layf;->a:Layd;

    invoke-virtual {v0}, Layd;->a()V

    .line 18
    return-void
.end method
