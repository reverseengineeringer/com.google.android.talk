.class public final Lcid;
.super Lav;
.source "SourceFile"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;


# instance fields
.field private a:Landroid/nfc/NfcAdapter;

.field private b:Landroid/os/Handler;

.field private c:Lcgs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lav;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    invoke-virtual {v0}, Lcfc;->r()Lcgw;

    move-result-object v0

    .line 81
    if-nez v0, :cond_1

    .line 82
    const-string v0, "HangoutState is null. Will not send NdefMessage"

    invoke-static {v0}, Laal;->k(Ljava/lang/String;)V

    .line 98
    :cond_0
    :goto_0
    iget-object v1, p0, Lcid;->b:Landroid/os/Handler;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-object v0, p0, Lcid;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 100
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 84
    :cond_1
    invoke-virtual {v0}, Lcgw;->q()Lhcs;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v1}, Lhcs;->m()Lhip;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v0}, Lcgw;->e()Lcgs;

    move-result-object v0

    .line 92
    invoke-virtual {v1}, Lhip;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcgs;->b(Ljava/lang/String;)Lcgs;

    move-result-object v0

    iput-object v0, p0, Lcid;->c:Lcgs;

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 41
    const-string v1, "createNdefMessage"

    invoke-static {v1}, Laal;->k(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcid;->b:Landroid/os/Handler;

    monitor-enter v1

    .line 44
    :try_start_0
    iget-object v2, p0, Lcid;->b:Landroid/os/Handler;

    new-instance v3, Lcie;

    invoke-direct {v3, p0}, Lcie;-><init>(Lcid;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :try_start_1
    iget-object v2, p0, Lcid;->b:Landroid/os/Handler;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    iget-object v1, p0, Lcid;->c:Lcgs;

    if-nez v1, :cond_0

    .line 61
    const-string v1, "Could not fetch HangoutRequest. Will not send NdefMessage."

    invoke-static {v1}, Laal;->k(Ljava/lang/String;)V

    .line 76
    :goto_0
    return-object v0

    .line 55
    :catch_0
    move-exception v2

    :try_start_3
    const-string v2, "InterruptedException while creating NdefMessage."

    invoke-static {v2}, Laal;->k(Ljava/lang/String;)V

    .line 56
    monitor-exit v1

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 67
    :cond_0
    :try_start_4
    iget-object v1, p0, Lcid;->c:Lcgs;

    .line 2045
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2046
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2047
    invoke-virtual {v3, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2048
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    .line 73
    const-string v1, "com.google.android.apps.hangouts"

    const-string v2, "hangoutrequest"

    .line 74
    invoke-static {v1, v2, v0}, Landroid/nfc/NdefRecord;->createExternal(Ljava/lang/String;Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 76
    new-instance v0, Landroid/nfc/NdefMessage;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    goto :goto_0

    .line 69
    :catch_1
    move-exception v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cannot serialize hangout request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laal;->k(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0, p1}, Lav;->onCreate(Landroid/os/Bundle;)V

    .line 2015
    const-string v0, "Babel_calls"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lezi;->a(Ljava/lang/String;I)Z

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcid;->b:Landroid/os/Handler;

    .line 33
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 105
    invoke-super {p0}, Lav;->onResume()V

    .line 106
    invoke-virtual {p0}, Lcid;->getActivity()Lba;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcid;->a:Landroid/nfc/NfcAdapter;

    .line 107
    iget-object v0, p0, Lcid;->a:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcid;->a:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Lcid;->getActivity()Lba;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, p0, v1, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    goto :goto_0
.end method
